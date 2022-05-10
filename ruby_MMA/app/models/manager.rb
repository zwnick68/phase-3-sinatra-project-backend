class Manager < ActiveRecord::Base
    has_many :fighters
    has_many :promotions, through: :fighters
end 