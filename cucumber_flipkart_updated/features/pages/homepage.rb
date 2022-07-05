require_relative '../support/helpers/web_driver_helper'


class HomePage
  LOGIN_BUTTON = [:css, '._2QfC02 button'].freeze
  SEARCH_BOX = [:name ,"q"]

  def close_login_popup()
    popup_btn = Functions.findelement(LOGIN_BUTTON.first,LOGIN_BUTTON.last)
    popup_btn.click
  end

  def enter_search_keyword(search_item)
    search_box = Functions.findelement(SEARCH_BOX.first,SEARCH_BOX.last)
    Functions.sendkeys(search_box,search_item)
  end

  def clear_search_box()
    searchbox = Functions.findelement(SEARCH_BOX.first, SEARCH_BOX.last)
    Functions.sendkeys(searchbox,"")
  end

end