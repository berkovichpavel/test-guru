class Test < ApplicationRecord

  def self.all_titles_by_category(name)
    category_id = Category.where(title: name).first.id
    self.where(category_id: category_id).order(title: :desc).pluck(:title)
  end
end
