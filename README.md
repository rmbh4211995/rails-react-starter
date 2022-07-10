# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

## Development

Run dev server
`rails server`

React frontend is supported through [jsbundling-rails](https://github.com/rails/jsbundling-rails). All react related code is located under /javascript and bundled with esbuild.

## Generators

Generating a controller and view
`rails generate controller Jokes index --skip-routes`

Generating a model
`rails generate model Joke author:string body:text`
`rails generate model Comment author:string body:text joke:references`

## Database

Apply migrations
`rails db:migrate`

## Routes

Using path helpers
`joke_path`: `/jokes/#{joke.id}`
