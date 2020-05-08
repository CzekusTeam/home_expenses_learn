ActiveAdmin.register User do
  permit_params :email, organisation_ids: []

  index do
    selectable_column
    id_column
    column :email
    column :organisations
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :organisations
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :organisations, :as => :check_boxes
    end
    f.actions
  end

end
