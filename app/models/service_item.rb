class ServiceItem < ApplicationRecord
  belongs_to :service

  validates :name, :price, presence: true
  validates :name, format: { with: /\A[a-zA-Z0-9 ]*\z/,
    message: "cannot contain special characters." }
end
