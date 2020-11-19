class Test < ApplicationRecord
  def self.all_titles_by_category(name)
    joins(:category)
        .where(categories: { title: name })
        .order(title: :desc)
        .pluck(:title)
  end
end
