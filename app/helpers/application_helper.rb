module ApplicationHelper
  def page_title
    t = content_for :title
    mt = 'Children of Digital Age'
    if t and not t.empty?
      return [mt, t].compact.join " :: "
    else
      return mt
    end
  end

  def page_short_title
    t = content_for :title
    mt = 'Welcome'
    if t and not t.empty?
      return t
    else
      return mt
    end
  end

  def page_titling(title)
    content_for :title, title
  end
end
