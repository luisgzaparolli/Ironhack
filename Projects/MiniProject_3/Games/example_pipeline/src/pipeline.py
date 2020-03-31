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

	data_extraction.update(client, params)


if __name__ == '__main__': 
	params = Params()
	client = Client(params)

	process(client, params)