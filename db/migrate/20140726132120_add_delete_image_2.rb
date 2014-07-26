class AddDeleteImage2 < ActiveRecord::Migration
  def change

  	add_column :works, :destroyImage2, :boolean, default: false

  end
end
