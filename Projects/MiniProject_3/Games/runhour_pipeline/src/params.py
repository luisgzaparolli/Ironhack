class Params:
	"""
	Parameters for the COVID-19 extraction pipeline.
	"""

	# url for COVID-19, John Hopkins University

	headers = {'Client-ID': 'h8zvs5dtl6ukn16cvf8s2ade7xw6km', 'Accept': 'application/vnd.twitchtv.v5+json'}
	headers2 = {'Client-ID': 'h8zvs5dtl6ukn16cvf8s2ade7xw6km', 'Accept': 'application/vnd.twitchtv.v5+json'}
	headers3 = {'Client-ID': 'h8zvs5dtl6ukn16cvf8s2ade7xw6km', 'Accept': 'application/vnd.twitchtv.v5+json'}

	user = 'postgres'
	pwd = '1fYS.9:f'
	host = 'localhost'
	database = 'games'

	url_string = f'postgresql+psycopg2://{user}:{pwd}@{host}/{database}'

	# variables that will be populated inside the nodes

	path = None


	force_execution = False