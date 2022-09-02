class Company < ActiveRecord::Base
    has_many(:freebies)
    has_many(:companies,through: :freebies)

    def give_freebie(dev, item_name, value)
        Freebie.create(item_name:item_name,dev:dev,company:self) #the company here can be replaced by company_id
    end

    def self.oldest_company
        self.find_by(founding_year:self.minimum("founding_year"))
    end
end
