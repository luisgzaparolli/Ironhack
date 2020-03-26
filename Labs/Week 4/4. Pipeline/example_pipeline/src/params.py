class Params:
	"""
	Parameters for the COVID-19 extraction pipeline.
	"""

	# url for COVID-19, John Hopkins University
	url = 'https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_daily_reports'

	user = 'postgres'
	pwd = 'admin'
	host = 'localhost'
	database = 'example_corona'

	url_string = f'postgresql+psycopg2://{user}:{pwd}@{host}/{database}'

	backup_folder = "C:/Users/andreaguiar/Desktop/usr/dev/2020/example_pipeline/data/intermediate/"
	log_folder = "C:/Users/andreaguiar/Desktop/usr/dev/2020/example_pipeline/log/"


	# variables that will be populated inside the nodes
	file_url = None
	path = None


	force_execution = False