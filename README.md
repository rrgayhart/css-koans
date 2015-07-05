# CSS Koans - Front End

#### koan
##### noun ko·an \ˈkō-ˌän\
> A paradox to be meditated upon that is used to train Zen Buddhist monks to abandon ultimate dependence on reason and to force them into gaining sudden intuitive enlightenment.
-Merriam-Webster

[Visit the Production App](http://css-koans.com/)

## System Setup
1. Make sure you have a Ruby gem manager installed (e.g. RVM or Rbenv).
   Use [Homebrew](www.brew.sh) if you don't.
2. Use your gem manager to install the Ruby version specified in
   `.ruby-version`.
3. Install the Bundler gem with `gem install bundler`. If you're using
   Rbenv, run a `rbenv rehash`
4. Install project dependencies with `bundle install`.
5. Make sure you have Postgres installed. Use Homebrew or download the
   [client](http://postgresapp.com/) if you don't.
6. `bundle install`
7. `npm install`

## Running the App
1. `bundle exec rails s`
2. Navigate to `localhost:3000` in your browser

## Testing

This project uses [rspec](https://github.com/rspec/rspec-rails), [factory girl](https://github.com/thoughtbot/factory_girl_rails), [database cleaner](https://github.com/DatabaseCleaner/database_cleaner) and
[faker](https://github.com/stympy/faker) for testing.

1. Run `rspec` or `bundle exec rspec` to execute all of the tests.
2. To run a particular test, run `rspec spec/path/to/test/my_test.rb`. You can append a line number like `...my_spec.rb:33` to run a specific test.


## Other Dependencies

### Postgres Database

1. Make sure you have Postgres installed. Use Homebrew or download the
   [client](http://postgresapp.com/) if you don't.
2. Run `rake db:setup` to get started.
3. Run `rake db:test:prepare` to get the database up and started for
   testing.

### Environment Variables

The project uses [dotenv-rails](https://github.com/bkeepers/dotenv) to store environment variables.

1. Copy the `.env.example` file to `.env`.
2. Replace the values of the keys with the correct keys.
3. Note that `.env` is excluded from git and should never be
   checked in or removed to the .gitignore file.

Copyright (c) 2015 Romeeka Gayhart, released under the MIT license
