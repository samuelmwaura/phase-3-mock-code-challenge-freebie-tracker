class Freebie < ActiveRecord::Base
    belongs_to(:company)  #one to many relationship between freebies and companies
    belongs_to(:dev)  #one to many relationship between  freebies and devs

    def print_details
        "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
    end
end
