# frozen_string_literal: true

module ApplicationHelper
  def current_year
    Time.now.year
  end

  def github_url(author, repository)
    "https://github.com/#{author}/#{repository}/"
  end
end
