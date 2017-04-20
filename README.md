# UPoints

## Functionality
 TBA
## How to run it

#### Installing Ruby on Rails with Postgres

#### Mailer
We use SMTP local mailer called 'mailcatcher' gem. To run it follow the steps

- Install mailcatcher
    > gem install mailcatcher
- Run mailcatcher
    > mailcatcher
- Go to the mailcatcher site
  > http://localhost:1080/
- Send your emails away!
  
#### Fixing Database
- Drop the database and reinstall/re-migrate everything
  > bundle exec rake db:drop db:create db:migrate