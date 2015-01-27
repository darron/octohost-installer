path = File.expand_path('../app/workers/*.rb', __FILE__)
Dir[path].each { |file| require file }
