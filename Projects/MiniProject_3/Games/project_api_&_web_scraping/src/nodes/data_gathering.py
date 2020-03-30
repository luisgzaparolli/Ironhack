import logging
import pandas as pd
from datetime import datetime
import requests
from bs4 import BeautifulSoup
import sys
import numpy as np

logger = logging.getLogger('nodes.data_gathering')

def update(client, params):
	"""
	Return True if the node is up-to-date else False.
	"""

	html = requests.get(params.url_steam_a).content
	soup = BeautifulSoup(html, "lxml")

	mostselledgames = [games.text.strip().replace('\n','') for games in soup.find_all('div', attrs = {'class': 'col search_name ellipsis'})]

	datereleased = [date.text for date in soup.find_all('div', attrs = {'class': 'col search_released responsive_secondrow'})]

	try:
	    discount = [discount.text.strip().replace('-','').replace('%','') for discount in soup.find_all('div', attrs = {'class': 'col search_discount responsive_secondrow'})]
	except:
	    discount = [discount.text.strip() for discount in soup.find_all('div', attrs = {'class': 'col search_discount responsive_secondrow'})]

	try:
	    price = [float(price.text.strip().split()[-1].replace(',','.')) for price in soup.find_all('div', attrs = {'class': 'col search_price_discount_combined responsive_secondrow'})]
	except:
	    price = [price.text.strip().split()[-1].replace(',','.') for price in soup.find_all('div', attrs = {'class': 'col search_price_discount_combined responsive_secondrow'})]
	date_list = [datetime.today() for i in range(len(mostselledgames))]
	data = list(zip(date_list, mostselledgames, datereleased, discount, price))
	headers = ['date', 'game_name', 'date_released', 'discount', 'price R$']
	df = pd.DataFrame(np.array(data), columns = headers)
	logger.info(f'Storing at {params.path}.')
	#df.to_csv(path)

def done(client, params):
	"""
	Return True if the node is up-to-date else False.
	"""

	pass