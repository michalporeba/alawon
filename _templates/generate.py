import json
import os
import sys
from jinja2 import Environment, FileSystemLoader
from dataclasses import dataclass, field
from typing import List, Dict


location = sys.argv[1]


@dataclass
class Book:
    isDraft: bool = False
    cover: Dict = field(default_factory=dict)
    title: Dict = field(default_factory=dict)
    subtitle: Dict = field(default_factory=dict)
    titlenote: Dict = field(default_factory=dict)
    layout: Dict = field(default_factory=dict)


@dataclass
class Section:
  name: str
  type: str
  rhythms: List[str] = field(default_factory=list)
  tunes: list = field(default_factory=list)


def define_sections(book: Book):
  sections_from_layout = {}
  for section_id, section_data in book.layout.items():
    print(f'processing section {section_id}')
    print(section_data)
    sections_from_layout[section_id] = Section(
      section_id,
      section_data.get('type', 'unknown'),
      section_data.get('rhythms', []),
      section_data.get('tunes', []),
    )
    
  return sections_from_layout


def sort_tunes(tunes):
  return sorted(tunes, key=lambda t:t['title'])


def get_sections_with_tunes(book: Book, tunes):
  sections = define_sections(book) 

  for tune in tunes:
    section_id = tune.get('section')
    if not section_id:
      rhythm = tune.get('rhythm', {}).get('name', 'other')
      for section in sections.values():
        if rhythm in section.rhythms:
          section_id = section.name
          break
      section_id = section_id or 'other'

    if not section_id in sections:
      print(f'WARNING: Section {section_id} required by {tune.get('title')} does not exist in the book')
      continue

    sections[section_id].tunes.append(tune) 

  return sections 


def render_all(book: Book, grouped_tunes_sections, template_name, nomusic=False, location=location):
  environment = Environment(loader=FileSystemLoader('jinja'))
  template = environment.get_template(template_name)

  context = {
      "nomusic": nomusic,
      "sections": grouped_tunes_sections,
  }
  context.update(book.__dict__) 

  yield { "id": template_name, "output": template.render(**context) }


def render_each(tunes, template_name):
  environment = Environment(loader=FileSystemLoader('../_templates/jinja'))
  template = environment.get_template(template_name)

  for tune in tunes:
    yield { "id": tune["id"], "output": template.render(tune) }


def save(renders, path_template):
  for render in renders:
    path = path_template.format(id=render["id"])
    directory = os.path.dirname(path)

    if not os.path.exists(directory):
      os.makedirs(directory)

    with open(path, 'w') as file:
      file.write(render["output"])


def get_tunes():
  def filter(tune):
    # first argument is the location of the files
    return (len(sys.argv) == 2 or tune.get('id') in sys.argv[2:]) and tune.get('hidden', "false") != "true"

  tunes = [
    tune for tune in json.load(open(f'../{location}/music.json')) if filter(tune)
  ]

  for tune in tunes:
    with open(f'../{location}/scores/{tune["id"]}.ly', 'r') as file:
      tune["score"] = file.read()

  return tunes


def main():
  output_location = f'../{location}/templates/'
  tunes = get_tunes()
  print(f'INFO: Processing {len(tunes)} melodies.')

  book_data = json.load(open(f'../{location}/book.json'))
  book = Book(**book_data)
  save(render_each(tunes, 'tune.ly'), output_location+'{id}.ly')
  save(render_each(tunes, 'tune-in-dots.lytex'), output_location+'dots/{id}.lytex')
  save(render_each(tunes, 'tune-in-guitar.lytex'), output_location+'guitar/{id}.lytex')
  save(render_each(tunes, 'tune-in-mandolin.lytex'), output_location+'mandolin/{id}.lytex')
  save(render_each(tunes, 'tune-in-gdad.lytex'), output_location+'gdad/{id}.lytex')

  if len(sys.argv) == 2:

    tunes = sort_tunes(tunes)
    sections = get_sections_with_tunes(book, tunes)

    for section_id, section in sections.items():
      print(f'INFO: There are {len(section.tunes)} tunes in {section_id}s')

    save(render_all(book, sections, 'book-in-dots.lytex', nomusic=True, location=location), output_location+'book.nomusic.lytex')
    save(render_all(book, sections, 'book-in-dots.lytex', location=location), output_location+'book.dots.lytex')
    save(render_all(book, sections, 'book-in-guitar.lytex', location=location), output_location+'book.guitar.lytex')
    save(render_all(book, sections, 'book-in-mandolin.lytex', location=location), output_location+'book.mandolin.lytex')
    save(render_all(book, sections, 'book-in-gdad.lytex', location=location), output_location+'book.gdad.lytex')


if __name__ == '__main__':
  main()