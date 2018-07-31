class Hashtag < ApplicationRecord
  has_many :user_hashtag_categories, dependent: :destroy
  has_many :users, through: :user_hashtag_categories
  has_many :categories, through: :user_hashtag_categories

  def self.select_block(user, categories)
    hashtags_population = {}
    categories.each do |category_id|
      category = Category.find(category_id)
      hashtags_population[category] = by_user_and_category(user, category).pluck(:name).shuffle
    end
    max_length = hashtags_population.values.map { |v| v.length }.max
    selection = []
    max_length.times do |i|
      hashtags_population.each do |cat, hashtags|
        next if hashtags.length <= i || selection.length >= 29
        selection << "##{hashtags[i]}"
      end
      break if selection.length >= 29
    end
    return selection
  end

  def self.by_user_and_category(user, category)
    joins(:user_hashtag_categories).where(user_hashtag_categories: {user: user, category: category}).uniq
  end
end
