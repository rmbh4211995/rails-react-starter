class HelloWorldJob < ApplicationJob
  def perform(*args)
    sleep 45

    p "Hello World! - HelloWorldJob #{Time.now().strftime('%F - %H:%M:%S.%L')}"
  end
end
