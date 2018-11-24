class Portfolio < ApplicationRecord
  validates :title, :body, :main_image, :thumb_image, presence: true
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails")}
end
