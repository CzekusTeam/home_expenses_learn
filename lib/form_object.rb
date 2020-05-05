class FormObject
  include ActiveModel::Model
  def set_params(args = {})
    args.each do |k,v|
      instance_variable_set("@#{k}", v) unless v.nil?
    end
  end
end