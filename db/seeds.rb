require 'sequel'
require 'yaml'

DB = Sequel.connect("postgres://localhost/dvr_app2_development")

Dir['../models/*.rb'].each { |model| require model }

# you have to be in db to run this file
raw_stations = YAML.load FILE.read('../data/stations.yaml')


