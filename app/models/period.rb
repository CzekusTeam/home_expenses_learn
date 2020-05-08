class Period < ApplicationRecord
  belongs_to :organisation

  def name
    "#{month_name} #{year}"
  end

  def month_name
    Date::ABBR_MONTHNAMES[month]
  end
end
