from nodes import data_extraction
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