class Order < ApplicationRecord

  belongs_to :user
  belongs_to :food

  validates :address, presence: true

end
