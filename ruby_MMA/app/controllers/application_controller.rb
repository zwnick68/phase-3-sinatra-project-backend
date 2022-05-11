class ApplicationController < Sinatra::Base
    # set :default_content_type, "application/json"
    get '/' do
        fighters = Fighter.all
        {Fighters: fighters}.to_json(include: {
            manager: {only: [:name], include: {
            promotions: {only: [:name]}
            }}})
    end

    get '/managers' do
        managers = Manager.all
        {managers: managers}.to_json(include: {
            fighters: {only: [:name, :image], include: {
            promotion: {only: [:name]}
            }}})
           
    end

    get '/promotions' do
        promotions = Promotion.all
        {promotions: promotions}.to_json(include: {
            fighters: {only: [:name, :weightclass]}})
    end
end