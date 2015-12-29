require 'sinatra'
require 'active_record'
require 'tilt/erubis'
require 'pathname'

APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))

database_config = { :adapter => "sqlite3",
                    :database => "#{APP_ROOT}/db/todoolittle.sqlite3"}

ActiveRecord::Base.establish_connection(database_config)

require_relative 'controllers/todos'
require_relative 'models/todo'





