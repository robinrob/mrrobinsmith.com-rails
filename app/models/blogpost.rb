class Blogpost < ActiveRecord::Base
  def preview
    first_n_words(50, body)
  end

  def first_n_words(n, text)
    text.split(" ")[0..n].join(" ")
  end
end
