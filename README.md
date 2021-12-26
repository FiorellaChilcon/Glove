# Scheduled Tweets
Go rails tutorial https://gorails.com/episodes/rails-for-beginners-part-1-installing-ruby-on-rails
## Installation
`yarn install`
`bundle install`
## Database
create database
`rails db:create`

## Migrations
run migrations
`rails db:migrate`
## Server
start server
`rails server`

## Local set up
Install redis
`brew install redis`
Start service
`brew services restart redis`
Login to Heroku CLI
`heroku login`
Add project
`heroku git:remote -a app-scheduled-tweets`
## Push changes
`heroku push master`
Update migrations
`heroku run rake db:migrate`
Update rails credentials
`EDITOR="code --wait" bin/rails credentials:edit --environment=development`
Update development/production key
heroku platform >> project >> settings >> Config Vars `RAILS_MASTER_KEY`
