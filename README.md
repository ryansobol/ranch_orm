ranch_orm
=========

[![Hack ryansobol/ranch_orm on Nitrous.IO](https://d3o0mnbgv6k92a.cloudfront.net/assets/hack-l-v1-4b6757c3247e3c50314390ece34cdb11.png)](https://www.nitrous.io/hack_button?source=embed&runtime=rails&repo=ryansobol%2Franch_orm&file_to_open=README.nitrous.md)

To install dependencies:

```
brew install sqlite
mkdir ranch_orm
cd ranch_orm
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
