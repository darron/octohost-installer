class SampleWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform
    # Lots of hard working code....
  end
end
