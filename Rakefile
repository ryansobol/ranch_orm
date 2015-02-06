namespace :db do
  task :migrate do
    require 'bundler'
    Bundler.require

    ActiveRecord::Base.establish_connection(
      adapter: :sqlite3,
      database: 'db/ranch.sqlite3'
    )

    ActiveRecord::Migrator.migrations_paths = ['db/migrate']

    ActiveRecord::Tasks::DatabaseTasks.migrate
  end
end
