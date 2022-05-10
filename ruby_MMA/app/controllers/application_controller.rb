class ApplicationController < Sinatra::Base
    set :default_content_type, "application/json"
    get '/' do
        
     fighters = Fighter.all
     managers = Manager.all
     promotions = Promotion.all
     
     data = fighters + managers + promotions
     data.to_json
    end
end