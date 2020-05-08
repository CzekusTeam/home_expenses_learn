ActiveAdmin.register Period do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :month, :year, :organisation_id

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs 'Details' do
      f.input :month, as: :select, collection: 1..12
      f.input :year, as: :select, collection: 2020..(3.years.from_now.year)
      f.input :organisation
    end

    f.actions # adds the 'Submit' and 'Cancel' buttons
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
