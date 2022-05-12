class ApplicationController < Sinatra::Base
    # set :default_content_type, "application/json"
    get '/fighters' do
        fighters = Fighter.all
        {Fighters: fighters}.to_json(include: {
            manager: {only: [:name], include: {
            promotions: {only: [:name]}
            }}})
    end

    get '/fighters/:id' do
        fighter = Fighter.find(params[:id])
        {fighters: fighter}.to_json 
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

    delete '/fighters/:id' do
    fighter = Fighter.find(params[:id])
    fighter.destroy
    {fighters: fighter}.to_json
    end  

    post '/fighters' do
        fighter = Fighter.create(
        name: params[:name],
        height: params[:height],
        reach: params[:reach],
        weightclass: params[:weightclass],
        wins: params[:wins],
        losses: params[:losses],
        draws: params[:draws],
        manager_id: params[:manager_id],
        promotion_id: params[:promotion_id],
        image: params[:image],
        )
        fighter.to_json
    end
    patch "/fighters/:id" do 
        fighter = Fighter.find(params[:id])
        fighter.update(
        name: params[:name],
        height: params[:height],
        reach: params[:reach],
        weightclass: params[:weightclass],
        wins: params[:wins],
        losses: params[:losses],
        draws: params[:draws],
        manager_id: params[:manager_id],
        promotion_id: params[:promotion_id],
        image: params[:image]
        )
        fighter.to_json
    end
end