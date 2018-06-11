class Service < ApplicationRecord
  validates :name, presence: true

  has_many :service_items, dependent: :destroy
  validates :name, format: { with: /\A[a-zA-Z]+\z/,
    message: "cannot contain special characters." }
end
