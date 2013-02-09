module ApplicationHelper

  def country_list
    Country.all
  end

  def dropdown_selected
    raw("selected='selected'")
  end

  def show_current(video)
    video ? video.id : 8
  end

end
