class AddYoutubeLinkToPortfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :youtube_url, :string
  end
end
