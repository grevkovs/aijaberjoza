helpers do
  def locale_url
    if t.lang == 'ru'
      '<a href="/lv">LV</a>'
    else
      '<a href="/ru">РУ</a>'
    end
  end
end