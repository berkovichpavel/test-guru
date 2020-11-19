class Test < ApplicationRecord
  def self.all_titles_by_category(name)
    Test.joins(:category)
        .where(categories: { title: name })
        .order(title: :desc)
  end
end
