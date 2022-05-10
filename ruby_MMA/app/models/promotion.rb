class Promotion < ActiveRecord::Base
    has_many :fighters
    has_many :managers, through: :fighters
    def Promotion.create_promotion(name)
        Promotion.create(name: name)
    end
end 