[![CircleCI](https://circleci.com/gh/minhaportoalegre/verdade-ou-consequencia.svg?style=svg)](https://circleci.com/gh/minhaportoalegre/verdade-ou-consequencia)
[![Tasks to do](https://badge.waffle.io/minhaportoalegre/verdade-ou-consequencia.svg?label=todo&=To Do)](http://waffle.io/minhaportoalegre/verdade-ou-consequencia)
[![Code Climate](https://codeclimate.com/github/minhaportoalegre/verdade-ou-consequencia/badges/gpa.svg)](https://codeclimate.com/github/minhaportoalegre/verdade-ou-consequencia)

# Rodar o projeto

1. Install Ruby `2.1.9' with Rbenv or RVM.
2. Install Bundler with `$ gem install bundler`.
3. Verify Rails version with `$ rails -v`, should be `3.2.13`. If not, try to install it.
4. Install PostgreSQL in your machine or provide a container with `$ docker-compose up -d`
5. Make sure the app is well configured to use your database instance on file `config/database.yml`
6. Create tables in database with `$ bundle exec rake db:create db:migrate` and setup test
   environment with `$ bundle exec rake db:test:prepare`.
7. Run the server with `$ bundle exec rails s`.

# Tasks
Você pode ver as coisas que temos para fazer (features, bugs, ideias etc) no Waffle:

[waffle.io/minhaportoalegre/verdade-ou-consequencia](https://waffle.io/minhaportoalegre/verdade-ou-consequencia)

Ou se preferir, nas issues aqui mesmo no Github.
