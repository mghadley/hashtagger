module HashtagsHelper
  def format_block(hashtags)
    header = ".\n.\n.\n.\n.\n"
    header + hashtags.join(" ")
  end
end
