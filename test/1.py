##-----------------创建数据表--------------------------
import configparser
config = configparser.ConfigParser()

config["DEFAULT"] = {
    'ServerAliveInterval': '45',
    'Compression': 'yes',
    'CompressionLevel': '9'
}

config["bitbucket.org"] = {}
config["bitbucket.org"]["user"] = "hg"

config['topsecret.server.com'] = {}
topsecret = config['topsecret.server.com'] #  ?
topsecret['Host Post'] = '50022'  #mutates the parser
topsecret['ForwardX11'] = 'no' #same here

with open('example.ini','w') as f:
    config.write(f)