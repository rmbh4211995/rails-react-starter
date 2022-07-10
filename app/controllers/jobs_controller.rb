require 'sidekiq/api'

class JobsController < ApplicationController
  def create
    HelloWorldJob.perform_later

    redirect_to jobs_path
  end

  def index
    @queues = Sidekiq::Queue.all
    puts @queues.to_json
    @queues 
  end
end