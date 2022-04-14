# Scheduled Tweets
Project to put into practice the things I learnt in a course of `ruby on rails` and `ruby`. <br>
Go rails tutorial: https://gorails.com/episodes/rails-for-beginners-part-1-installing-ruby-on-rails
## Installation
`yarn install` <br />
`bundle install`
## Database
create database <br />
`rails db:create`

## Migrations
run migrations <br />
`rails db:migrate`
## Server
start server <br />
`rails server`

## Local set up
- Install redis <br />
`brew install redis` <br />
- Start service <br />
`brew services restart redis` <br />
- Login to Heroku CLI <br />
`heroku login` <br />
- Add project <br />
`heroku git:remote -a app-scheduled-tweets`
## Changes
- Push changes <br />
`heroku push master` <br />
- Update migrations <br />
`heroku run rake db:migrate` <br />
- Update rails credentials <br />
`EDITOR="code --wait" bin/rails credentials:edit --environment=development` <br />
- Update development/production key <br />
heroku platform >> project >> settings >> Config Vars `RAILS_MASTER_KEY`
