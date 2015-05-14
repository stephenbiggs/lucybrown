class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|

    	t.text :about
    	t.text :contact
    	t.text :homecontact

      t.timestamps
    end
  end
end
