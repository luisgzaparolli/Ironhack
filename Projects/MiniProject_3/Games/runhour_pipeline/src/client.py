from sqlalchemy import create_engine
import logging

logger = logging.getLogger('client.py')

class Client:
	"""
	Connection to database.
	"""

	def __init__(self, params):
		logger.DEBUG(f'Connecting to url-string: {params.url_string}')
		self.engine = create_engine(params.url_string)
		self.conn = self.engine.connect()