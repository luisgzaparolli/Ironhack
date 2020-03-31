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

	## TWITCH - Games Viewers and Channels


	gameviewers = pd.DataFrame()
	for i in range(0, 11):
		url_twitch1 = ('https://api.twitch.tv/kraken/games/top?offset=' + str(i) + '&Limit=100')
		response = requests.get(url_twitch1, headers=params.headers)
		games = response.json()['top']

		for game in games:
			today = datetime.date.today()
			hour_list = datetime.datetime.now().strftime("%H:%M:%S")
			game_id = game['game']['_id']
			game_name = game['game']['name']
			viewers = int(game['viewers'])
			channels = int(game['channels'])
			mini_df = pd.DataFrame({'date': [today],
									'hour': [hour_list],
									'id': [game_id],
									'name': [game_name],
									'viewers': [viewers],
									'channels': [channels]})
			gameviewers = pd.concat([gameviewers, mini_df])

	gameviewers = gameviewers.reset_index(drop=True)

	## TWITCH - Most viewed channels of top games

	stream_channel = pd.DataFrame()

	for i in range(10):
		try:
			url_twitch2 = ('https://api.twitch.tv/kraken/games/top')
			response = requests.get(url_twitch2, headers=params.headers2)
			games = response.json()
			top10games = (games['top'][i]['game']['name'])
			url_query = 'https://api.twitch.tv/kraken/search/streams?query=' + top10games + '&Limit=100'

			response = requests.get(url_query, headers=params.headers3)
			streams = response.json()['streams']

			for i in range(10):
				try:
					today = datetime.date.today()
					hour_list = datetime.datetime.now().strftime("%H:%M:%S")
					stream_id = streams[i]['channel']['_id']
					stream_name = streams[i]['channel']['name']
					stream_game = streams[i]['game']
					stream_viewers = int(streams[i]['viewers'])
					stream_lang = streams[i]['channel']['broadcaster_language']
					stream_followers = int(streams[i]['channel']['followers'])
					stream_views = int(streams[i]['channel']['views'])
					mini_df = pd.DataFrame({'date': [today],
											'hour': [hour_list],
											'streamer_id': [stream_id],
											'streamer_name': [stream_name],
											'game_name': [stream_game],
											'viewers': [stream_viewers],
											'language': [stream_lang],
											'followers': [stream_followers],
											'views': [stream_views]})
					stream_channel = pd.concat([stream_channel, mini_df])
				except:
					pass
		except:
			pass
	stream_channel = stream_channel.reset_index(drop=True)

	## STEAM - Players Online

	url_steam1 = 'https://store.steampowered.com/stats/Steam-Game-and-Player-Statistics'
	html = requests.get(url_steam1).content
	soup = BeautifulSoup(html, 'lxml')
	players_online = [players.text.strip().split()[0] for players in
					  soup.find_all('tr', attrs={'class': 'player_count_row'})]
	daily_peak = [players.text.strip().split()[1] for players in
				  soup.find_all('tr', attrs={'class': 'player_count_row'})]
	game_name = [players.find('a').text for players in soup.find_all('tr', attrs={'class': 'player_count_row'})]

	date_list = [datetime.date.today() for i in range(len(game_name))]
	hour_list = [datetime.datetime.now().strftime("%H:%M:%S") for i in range(len(game_name))]
	data = list(zip(date_list, hour_list, game_name, daily_peak, players_online))
	headers = ['date_list', 'hour_list', 'game_name', 'daily_peak', 'players_online']
	players_online = pd.DataFrame(np.array(data), columns=headers)


	logger.info(f'Reading to dataframe.')


	#logger.debug('Dataframe size: ', df.shape)
	#logger.debug('The resulting dataframe: ', df.head())

	logger.info(f'Storing at {params.path}.')

	update_table(title = 'game_viewers', df = gameviewers)
	update_table(title='top_channels', df=stream_channel)
	update_table(title='steam_playersonline', df=players_online)
