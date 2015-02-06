ranch_orm
=========

To install dependencies:

```
brew install sqlite
bundle install --path vendor/bundle
```

To migrate the database:

```
bundle exec rake db:migrate
```

To run:

```
ruby lib/ranch.rb
```
