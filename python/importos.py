import os 

location='C:/Users/HP/Documents/proyecto_devops/python/dataset'

if not os.path.exists(location):
    os.mkdir(location)
else:
    for root, dirs, files in os.walk(location,topdown=False):
        for name in files:
            os.remove(os.path.join(root,name))
        for name in dirs:
            os.rmdir(os.path.join(root,name))
    ###iportar libreria API Kaggle  ###
from kaggle.api.kaggle_api_extended import KaggleApi

### Autenticarnos ###
api = KaggleApi()
api.authenticate()
### Descargar dataset ##
## print(api.dataset_list(search=''))

##api.dataset_download_file('rahulvyasm/netflix-movies-and-tv-shows','netflix_titles.csv',path=location,force=True,quiet=False)
api.dataset_download_files('rahulvyasm/netflix-movies-and-tv-shows',path=location,force=True,quiet=False,unzip=True)