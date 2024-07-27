import json
import os
import sys
from jinja2 import Environment, FileSystemLoader


def render_all(tunes, template_name):
  environment = Environment(loader=FileSystemLoader('jinja'))
  template = environment.get_template(template_name)

  yield { "id": template_name, "output": template.render(tunes=tunes) }


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
  def filter(id):
    return len(sys.argv) == 1 or id in sys.argv

  return [
    tune for tune in json.load(open('data.json')) if filter(tune.get('id'))
  ]


def main():
  tunes = get_tunes()

  save(render_each(tunes, 'tune-in-dots.lytex'), 'lytex/{id}.dots.lytex')
  save(render_each(tunes, 'tune-in-mandolin.lytex'), 'lytex/{id}.mandoline.lytex')

  if len(tunes) > 1:
    save(render_all(tunes, 'book-in-dots.lytex'), 'lytex/book.dots.lytex')


if __name__ == '__main__':
  main()