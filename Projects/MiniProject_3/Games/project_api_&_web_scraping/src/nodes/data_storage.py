import logging

logger = logging.getLogger('nodes.data_storage')

def done(client, params):

	pass

def update(client, params):

	logger.info('Update storage node.')
	
	table_name = test1

	df = params.df

	df.to_sql(table_name, client.conn, if_exists='fail', index=False)
