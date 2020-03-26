from bs4 import BeautifulSoup
import logging
import pandas as pd
import re
import requests
import os

logger = logging.getLogger('data_extraction.py')


def done(client, params):
	"""
	Return True if the node is up-to-date else False.
	"""
	logger.info('Checking if extraction node is up-to-date.')

	date = re.findall('\d{2}-\d{2}-\d{4}', params.file_url)[0].replace('-','_')
	filename = 'corona_' + date + '.csv'
	path = params.backup_folder + filename

	params.path = path

	logger.info(f'Verifying the existence of {path}')

	if os.path.exists(path):
		logger.info(f'Node done for {date}')

		return True

	return False


def update(client, params):
	logger.info('Updating extraction node.')

	file = params.file_url

	logger.info(f'Accessing URL {file}.')
	response = requests.get(file)
	#logger.debug('Status code: ', response.status_code)


	html = response.content
	soup = BeautifulSoup(html, 'lxml')

	soup.find_all('div', attrs={'class':'BtnGroup'})[-1].find_all('a')[0]['href']

	# append it with github.com
	csv_url = 'https://github.com' + soup.find_all('div', attrs={'class':'BtnGroup'})[-1].find_all('a')[0]['href']

	# extract date 
	date = re.findall('\d{2}-\d{2}-\d{4}', csv_url)[0].replace('-','_')
	filename = 'corona_' + date + '.csv'

	logger.info(f'Reading to dataframe.')

	df = pd.read_csv(csv_url)
	#logger.debug('Dataframe size: ', df.shape)
	#logger.debug('The resulting dataframe: ', df.head())

	logger.info(f'Storing at {params.path}.')
	df.to_csv(path)