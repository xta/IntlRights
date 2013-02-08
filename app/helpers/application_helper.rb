module ApplicationHelper

  def country_list
    Country.all
  end

  def dropdown_selected
    raw("selected='selected'")
  end

end
