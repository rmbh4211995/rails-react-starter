class ApplicationJob < ActiveJob::Base
  # Active Job setup guide at https://github.com/mperham/sidekiq/wiki/Active-Job
  # include Sidekiq::Job

  # Automatically retry jobs that encountered a deadlock
  # retry_on ActiveRecord::Deadlocked

  # Most jobs are safe to ignore if the underlying records are no longer available
  # discard_on ActiveJob::DeserializationError
end
