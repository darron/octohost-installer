path = File.expand_path('../../workers/*.rb', __FILE__)
Dir[path].each { |file| require file }
