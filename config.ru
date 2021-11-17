require_relative "./config/environment"

# Allow CORS (Cross-Origin Resource Sharing) requests
use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  end
end

# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser

class App < Sinatra::Base

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end

end

# Our application
run ApplicationController
