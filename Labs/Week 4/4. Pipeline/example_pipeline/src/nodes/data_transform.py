import pandas as pd
import logging

logger = logging.getLogger('data_transform.py')


def done(client, params):
	"""
	Will always return False in such a way that the data is always transformed.

	This means that the transformation is always not done! (It will always run the `update` function).
	"""
	return False

	
def update(client, params):
	logger.info('Updating transform node.')
	logger.info(f'Reading file from {params.path}')

	df = pd.read_csv(params.path)
	df.columns = [col.replace('/','_') for col in df.columns]

	colnames = df.rename({'Province_State':'province', 
                      'Country_Region':'country', 
                      'Last Update': 'last_update',
                      'Last_Update': 'last_update'}, 
                     axis=1).columns

	df.columns = [col.lower() for col in colnames]

	# normalize date format
	df['last_update'] = pd.to_datetime(df['last_update'])
	
	# normalize names
	df.loc[df.country.str.contains('China'), 'country'] = 'China'
	
	# create column
	df['anomesdia'] = df.last_update.apply(lambda x : f'{str(x.year)}-{str(x.month).zfill(2)}-{str(x.day).zfill(2)}')	

	params.df = df

