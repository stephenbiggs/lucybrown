ActiveAdmin.register Work do

  permit_params :title, :content, :image1, :image2, :destroyImage2


    index do
      column :title
      column :content

      default_actions
    end


    form do |f|
      f.inputs "Details" do
        f.input :title
        f.input :content, as: :html_editor
        f.input :image1
        f.input :image2
        f.input :destroyImage2, as: :boolean, required: :false, label: 'Remove image'

      end
      f.actions
    end
    

end

