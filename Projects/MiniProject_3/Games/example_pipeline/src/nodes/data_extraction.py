from bs4 import BeautifulSoup
import logging
import pandas as pd
import re
import requests
import os
import datetime
import numpy as np
import sqlalchemy as db

logger = logging.getLogger('data_extraction.py')

def update_table(title: str, df):
    engine = db.create_engine('postgresql://postgres:1fYS.9:f@localhost/games')
    conn = engine.connect()
    df.to_sql(title, con=conn, if_exists='append', index = False)
    conn.close()


def update(client, params):
	logger.info('Updating extraction node.')

	file = params.file_url

	logger.info(f'Accessing URL {file}.')
	response = requests.get(file)
	#logger.debug('Status code: ', response.status_code)


	html = response.content
	soup = BeautifulSoup(html, 'lxml')

	mostselledgames = [games.text.strip().replace('\n', '') for games in
					   soup.find_all('div', attrs={'class': 'col search_name ellipsis'})]

	datereleased = [date.text for date in
					soup.find_all('div', attrs={'class': 'col search_released responsive_secondrow'})]

	try:
		discount = [discount.text.strip().replace('-', '').replace('%', '') for discount in
					soup.find_all('div', attrs={'class': 'col search_discount responsive_secondrow'})]
	except:
		discount = [discount.text.strip() for discount in
					soup.find_all('div', attrs={'class': 'col search_discount responsive_secondrow'})]

	try:
		price = [float(price.text.strip().split()[-1].replace(',', '.')) for price in
				 soup.find_all('div', attrs={'class': 'col search_price_discount_combined responsive_secondrow'})]
	except:
		price = [price.text.strip().split()[-1].replace(',', '.') for price in
				 soup.find_all('div', attrs={'class': 'col search_price_discount_combined responsive_secondrow'})]
	date_list = [datetime.date.today() for i in range(len(mostselledgames))]
	data = list(zip(date_list, mostselledgames, datereleased, discount, price))
	headers = ['date', 'game_name', 'date_released', 'discount', 'price R$']



	logger.info(f'Reading to dataframe.')

	mostselled_games = pd.DataFrame(np.array(data), columns=headers)

	#logger.debug('Dataframe size: ', df.shape)
	#logger.debug('The resulting dataframe: ', df.head())

	logger.info(f'Storing at {params.path}.')


	update_table(title='steam_topselledgames', df=mostselled_games)