from bs4 import BeautifulSoup
import logging
import os
import requests

logger = logging.getLogger('requirements.py')

def check(client, params):

	if params.force_execution:
		logger.warning(f'Removing all files from {params.backup_folder}')
		[os.remove(params.backup_folder + file) for file in os.listdir(params.backup_folder)]
		
	logger.info(f'Accessing URL {params.url}.')
	response = requests.get(params.url)
	html = response.content
	soup = BeautifulSoup(html, 'lxml')

	# get raw csv link from url
	params.csv_files = ['https://github.com' + tag['href'] for tag in soup.find_all('a') if tag['href'].endswith('.csv')]
