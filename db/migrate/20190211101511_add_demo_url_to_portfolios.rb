class AddDemoUrlToPortfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :url_link, :string
  end
end
