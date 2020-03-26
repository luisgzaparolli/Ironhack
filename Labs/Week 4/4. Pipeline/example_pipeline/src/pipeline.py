from nodes import requirements 
from nodes import data_extraction
from nodes import data_transform
from nodes import data_storage
from params import Params 
from client import Client
import logging



def process(client, params):  
	"""
	This is the core of the ETL-pipeline.
	"""

	# It fails when missing something. 
	requirements.check(client, params)
	# --> params.csv_files

	for file_url in params.csv_files:
		params.file_url = file_url

		if not data_extraction.done(client, params):
			data_extraction.update(client, params)
			# --> 

		if not data_transform.done(client, params):
			data_transform.update(client, params)

		if not data_storage.done(client, params): 
			data_storage.update(client, params)

if __name__ == '__main__': 
	params = Params()
	client = Client(params)

	# from datetime import datetime
	# date = datetime.today()
	# logname = str(date.year) + str(date.month)+ str(date.day)+str(date.hour) + str(date.minute) + str(date.second)
	logging.basicConfig(filename=params.log_folder + 'log.txt',
						filemode='a',
						format='%(asctime)s,%(msecs)d %(name)s %(levelname)s %(message)s',
					    datefmt='%Y-%m-%d %H:%M:%S',
				        level=logging.INFO)

	process(client, params)