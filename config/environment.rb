require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
    :adapter => 'sqlite3',
    :database => "db/myapply.db"
)

# <<< Whenever an active record method is called, it will be printed to
# the console >>>
ActiveRecord::Base.logger = Logger.new(STDOUT)

require_all 'app'