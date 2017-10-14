# UPoints Description
 Upoints is a website that allows users to post requests for food, in which others will accept and deliver food to the request poster at set location. The reason this website has a demand is because campus students use meal points to buy food. At the end of the year, many students run out of meal points, causing them to go off campus to buy food, while other students have a surplus of food, causing them to waste many meal points on buying excess food. Real currency is taxed on campus food, and current meal point exchange between students is also taxed as well as capped at one exchange per student per semester. These restrictions caused us to create this website which allows those with less meal points to buy (at a lower price with USD) meals from other students with excess meal points. This benefits both parties, as the poster receives cheaper meals, and the acceptor trades in their excess meal points for real money.
 
 
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
