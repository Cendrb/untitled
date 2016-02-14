module TitleHelper
  def set_title(title)
    content_for :title, title
  end

  def get_title
    if content_for? :title
      "Kana - #{content_for :title}"
    else
      'Kana on Rails'
    end
  end
end