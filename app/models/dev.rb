class Dev < ActiveRecord::Base
    has_many(:freebies)
    has_many(:companies,through: :freebies)

    def received_one?(item_name)
       if self.freebies.find{|freebie| freebie.item_name == item_name}  #returns the first freebie that as the same name as the passed name
        puts "There is one in every."
        true
       else
        false
       end        
    end

    def give_away(dev, freebie)  #changes the owner of the freebie
        if freebie.dev_id == self.id
            freebie.dev_id = dev.id
        else
        null
        end
    end


end
