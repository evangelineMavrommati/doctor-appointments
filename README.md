# README

* Ruby version  
`ruby 2.6.3p62`

* Rails version  
`Rails 6.0.3.2`

* DB config  
`rails db:migrate`

* Install gems  
`bundle install` 

* Seed data  
`rails db:seed`

* To start local server  
`rails s`

### Endpoints
GET `/doctors`   
GET `/doctors/:id`   

GET `/doctors/:id/appointments`   
GET `/doctors/:id/appointments { time: "07-07-2020" }`   
POST `/doctors/:id/appointments + { params }`   
DELETE `/doctors/:id/appointments/:id`
