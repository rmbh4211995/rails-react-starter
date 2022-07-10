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

## Development

Run dev server
`rails server`

React is supported through [vite-ruby](https://vite-ruby.netlify.app/guide/introduction.html#why-vite-ruby-%F0%9F%A4%94). All react related code is located under /app/frontend.

Ruby views follow the same rails conventions.

## CSS

Tailwind is setup through [tailwindcss-rails](https://tailwindcss.com/docs/guides/ruby-on-rails). The config file is located at /app/config/tailwind.config.js.
It is available on both React and Ruby frontends.

## API

An api layer is setup under /app/controllers/api/\*\_controller.rb
You can extend this layer following the typical rails conventions.

For example "api/jokes" will route to "controllers/api/jokes_controller#index"

## Generators

Generating a controller and view
`rails generate controller Jokes index --skip-routes`

Generating a model
`rails generate model Joke author:string body:text`
`rails generate model Comment author:string body:text joke:references`

Generating a job
`rails generate job HelloWorld`

## Database

Apply migrations
`rails db:migrate`

## Redis

Sidekiq workers store job data in a Redis db. Docker image is pulled from [bitnami/redis](https://hub.docker.com/r/bitnami/redis/)

## Routes

Using path helpers
`joke_path`: `/jokes/#{joke.id}`

## Cross Platform Development

If you are switching between Windows and Linux, you may find git differences due to line endings.

Ignore line ending differences
`git config core.filemode false`
