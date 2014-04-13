ActiveAdmin.register Work do

  
  permit_params :title, :content, :image1, :image2



    form do |f|
      f.inputs "Details" do
        f.input :title
        f.input :content
        f.input :image1
        f.input :image2
      end
      f.actions
    end


  
end
