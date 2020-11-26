# frozen_string_literal: true

module ApplicationHelper
  def current_year
    Time.now.year
  end

  def github_url(link_name, author, repository)
    link_to link_name, "https://github.com/#{author}/#{repository}/"
  end
end
