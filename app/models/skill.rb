class Skill < ApplicationRecord
  validates :title, :percent_utilize, presence: true
end
