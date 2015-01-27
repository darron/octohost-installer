# app/workers/digitalocean_worker.rb
puts 'Loading the Digitalocean Worker file.'
class DigitaloceanWorker
  include Sidekiq::Worker
  #sidekiq_options retry: false

  def perform(token)
    #puts "Doing the thing"
    cmd = "cd #{ENV['COOKBOOK_DIR']} && DIGITALOCEAN_API_TOKEN=\"#{token}\" packer build -only=digitalocean template.json"
    `#{cmd}`
  end
end
