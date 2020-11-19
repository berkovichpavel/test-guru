class Test < ApplicationRecord
  belongs_to :category

  def self.all_titles_by_category(name)
    joins(:categories)
        .where(categories: { title: name })
        .order(title: :desc)
        .pluck(:title)
  end
end
