from pandas import DataFrame

class Params:
	"""
	Parameters class.

	This file centralizes anything that can be 
	parametrized in the code.
	"""

	def get_response(url):
		response = requests.get(url, headers = params.headers)
		return response

	# API Parameters
	headers = {'Client-ID' : 'h8zvs5dtl6ukn16cvf8s2ade7xw6km', 'Accept' : 'application/vnd.twitchtv.v5+json'}

	# endpoint sources

	url_twitch_a = 'https://api.twitch.tv/kraken/games/top?offset='
	url_steam_a = 'https://store.steampowered.com/search/?filter=topsellers'
	raw_data = '../data/raw/'
	external_data = '../data/external/'
	processed_data = '../data/processed/'
	intermediate_data = '../data/intermediate/'

	log_name = '../log/dump.log'

	# if this is set to True, then all the nodes will be automatically 
	# considered not up-to-date and will be rerun.
	rerun = True 

	## Database connection params
	user = 'postgres'
	password = '1fYS.9:f'
	host = 'localhost'
	database = 'games'

	# variables that will be populated inside the nodes
	file_url = None
	path = None