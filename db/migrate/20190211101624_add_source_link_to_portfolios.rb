class AddSourceLinkToPortfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :source_url, :string
  end
end
