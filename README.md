# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

1. Run `rails new TicketSystemApp`
2. Generate a home page - `rails g controller home index`
3. Update routes.rb so that the root of the homepage is home/index - `root 'home#index'`
4. Manually create an About page by creating and `about.html.erb` file in /app/views/home/about.html.erb and update the route (get 'home/about') and the controller (def about)
5. Add Bootstrap by copying the getbootstrap.com/docs/5.3/getting-started/introduction into your application.html.erb file
```
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>
    <h1>Hello, world!</h1>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>
```
 - Update the Title and move some of the html and ruby code into the body of the Bootstrap code.

6. Create a Navbar - as a partial (_header.html.erb)
7. Link to the partial (header) in the application.html.erb file, 
8. Generate all the CRUD stuff for the Tickets, Customers, Tags, Machines
```
rails g scaffold Ticket description:text ticket_type:string photos:string notes:text customer:references
rails g scaffold Customer first_name:string last_name:string phone:string email:string
rails g scaffold Machine make:string model:string serial_number:string description:text last_service_date:datetime customer:references
rails generate model Tag name:string
rails generate model TicketTag ticket:references tag:references
```
9. Add gem 'devise' to the Gemfile
```
bundle install
rails generate devise:install
```
10. 

