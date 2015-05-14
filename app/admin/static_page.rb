ActiveAdmin.register StaticPage do

  permit_params :about, :contact, :homecontact

  form do |f|
      f.inputs "Details" do
        f.input :about, as: :html_editor
        f.input :contact, as: :html_editor
        f.input :homecontact, as: :html_editor

      end
      f.actions
  end

  
end
