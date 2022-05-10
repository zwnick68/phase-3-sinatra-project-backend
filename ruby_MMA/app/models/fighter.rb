class Fighter < ActiveRecord::Base
    belongs_to :manager
    belongs_to :promotion
    def record
        "#{self.wins}-#{self.losses}-#{self.draws}"
    end
    def change_management(manager)
       self.update(manager_id: manager.id) 
    #    unless self.managers == manager
    end
    def self.match(fighter1, fighter2)
        "#{fighter1.name} vs. #{fighter2.name}"
    end

end 