class Test < ApplicationRecord
  def self.all_titles_by_category(name)
    joins('INNER JOIN categories ON tests.category_id = categories.id')
      .where(categories: { title: name })
      .order(title: :desc)
      .pluck(:title)
  end
end
