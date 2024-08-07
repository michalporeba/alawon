import json
import os
import sys
from jinja2 import Environment, FileSystemLoader
from dataclasses import dataclass, field

@dataclass
class TunesSection:
  name: str
  tunes: list = field(default_factory=list)

def define_sections():
  sections = [
    TunesSection('march'),
    TunesSection('hornpipe'),
    TunesSection('reel'),
    TunesSection('minuet'),
    TunesSection('jig'),
    TunesSection('slipjig'),
    TunesSection('slide'),
    TunesSection('other')
  ]

  return { s.name: s for s in sections }

def sort_tunes(tunes):
  return sorted(tunes, key=lambda t:t['title'])

def group_tunes(tunes):
  sections = define_sections()
  for tune in tunes:
    section = tune.get('rhythm',{}).get('name', 'other')
    if section in sections.keys():
      sections[section].tunes.append(tune)
    else:
      sections['other'].tunes.append(tune)
      print(f'WARNING: [{tune["title"]}] is not categorised and is going to the "other" section')

  return sections

def render_all(sections, template_name):
  environment = Environment(loader=FileSystemLoader('jinja'))
  template = environment.get_template(template_name)

  yield { "id": template_name, "output": template.render(sections=sections) }


def render_each(tunes, template_name):
  environment = Environment(loader=FileSystemLoader('jinja'))
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
    return (len(sys.argv) == 1 or tune.get('id') in sys.argv) and tune.get('hidden', "false") != "true"

  tunes = [
    tune for tune in json.load(open('../data.json')) if filter(tune)
  ]

  for tune in tunes:
    with open(f'../scores/{tune["id"]}.ly', 'r') as file:
      tune["score"] = file.read()

  return tunes

def main():
  tunes = get_tunes()
  print(f'INFO: Processing {len(tunes)} melodies.')
  save(render_each(tunes, 'tune.ly'), 'lytex/{id}.ly')
  save(render_each(tunes, 'tune-in-dots.lytex'), 'lytex/dots/{id}.lytex')
  save(render_each(tunes, 'tune-in-guitar.lytex'), 'lytex/guitar/{id}.lytex')
  save(render_each(tunes, 'tune-in-mandolin.lytex'), 'lytex/mandolin/{id}.lytex')

  if len(tunes) > 1:

    tunes = sort_tunes(tunes)
    sections = group_tunes(tunes).values()

    for section in sections:
      print(f'INFO: There are {len(section.tunes)} {section.name}s')

    save(render_all(sections, 'book-in-dots.lytex'), 'lytex/book.dots.lytex')
    save(render_all(sections, 'book-in-guitar.lytex'), 'lytex/book.guitar.lytex')
    save(render_all(sections, 'book-in-mandolin.lytex'), 'lytex/book.mandolin.lytex')


if __name__ == '__main__':
  main()