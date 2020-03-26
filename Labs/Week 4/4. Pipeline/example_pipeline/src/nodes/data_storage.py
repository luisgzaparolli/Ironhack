import logging

logger = logging.getLogger('data_storage.py')


def done(client, params):
	logger.info('Checking if storage node is up-to-date.')
	filename = params.path.split('/')[-1]
	table_name = filename.split('.')[0]	
	condition = client.conn.engine.has_table(table_name)
	# date_condition = pd.read_sql(f'SELECT anomes FROM {table_name}')

	if condition:
		logger.info(f'Table {table_name} has been found in the database.')
		return True

	return False



def update(client, params):
	logger.info('Update storage node.')

	filename = params.path.split('/')[-1]
	table_name = filename.split('.')[0]
	
	df = params.df

	df.to_sql(table_name, client.conn, if_exists='fail', index=False)
