class About < ApplicationRecord
  validates :about_heading, :about_description, presence: :true
end
