import argparse
import requests
from pywebcopy import save_webpage

def verifyWebUrl(webAddress):
  response = requests.get(webAddress, timeout=7) 


parser = argparse.ArgumentParser()

parser.add_argument('--url', type=str, required=True)
parser.add_argument('--http_server', action='store_true')
args = parser.parse_args()


if args.http_server:
  print(args.url)
  url = args.url
  verifyWebUrl(url)
  # downloading on the same folder of the project
  download_folder = './'     

  kwargs = {
    'bypass_robots': True,
    'project_name': 'Bibek'}

  save_webpage(url, download_folder, **kwargs)

else:
  print(args.url, 'file will be downloaded from this url')
