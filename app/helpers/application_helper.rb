module ApplicationHelper

  def country_list
    Country.all
  end

  def dropdown_selected
    raw("selected='selected'")
  end

  def show_current(video)
    video ? raw( "value=\'#{video.id}\'" ) : ""
  end

end
