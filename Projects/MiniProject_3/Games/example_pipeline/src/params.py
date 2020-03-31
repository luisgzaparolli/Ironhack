class Params:
	"""
	Parameters for the COVID-19 extraction pipeline.
	"""

	# url for COVID-19, John Hopkins University
	file_url = 'https://store.steampowered.com/search/?filter=topsellers'

	user = 'postgres'
	pwd = '1fYS.9:f'
	host = 'localhost'
	database = 'games'

	url_string = f'postgresql+psycopg2://{user}:{pwd}@{host}/{database}'

	# variables that will be populated inside the nodes

	path = None


	force_execution = False