class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table(:freebies) do |t|
      t.string(:item_name)
      t.integer(:value)
      t.integer(:dev_id)  #foreign key from devs
      t.integer(:company_id) #foreign key from companies table
    end  
  end
end
