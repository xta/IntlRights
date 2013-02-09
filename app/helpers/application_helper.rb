module ApplicationHelper

  def country_list
    Country.all
  end

  def dropdown_selected
    raw("selected='selected'")
  end

  def show_current(video_id)
    video_id ? video_id : 8
  end

end
