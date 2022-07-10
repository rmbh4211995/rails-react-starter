class JobsController < ApplicationController
  def create
    HelloWorldJob.perform_later

    redirect_to jobs_path
  end

  def index

  end
end