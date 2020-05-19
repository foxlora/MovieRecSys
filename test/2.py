###----------增删改查------------------------------
import configparser
config = configparser.ConfigParser()



config.read('../config.ini')
print(config.sections())  #['bitbucket', 'topsecret.server.com']


print(config['mysql']['user'])   # hg




print(config.options('mysql'))  # ??['user', 'serveraliveinterval', 'compression', 'compressionlevel']
print(config.items('mysql'))  #[('serveraliveinterval', '45'), ('compression', 'yes'), ('compressionlevel', '9'), ('user', 'hg')]
##  下面的两组，不管取哪个，都会把[DEFAULT] 里面的顺带打印出来，这以后在实际中有相应的应用、

