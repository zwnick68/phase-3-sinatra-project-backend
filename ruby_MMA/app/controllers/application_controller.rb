class ApplicationController < Sinatra::Base
    set :default_content_type, "application/json"
    get '/' do
     fighters = Fighter.all
     fighters.to_json
    end
end