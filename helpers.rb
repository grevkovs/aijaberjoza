helpers do
  def locale_url
    if t.lang == 'ru'
      '<a href="/lv">LV</a>'
    else
      '<a href="/">РУ</a>'
    end
  end
end