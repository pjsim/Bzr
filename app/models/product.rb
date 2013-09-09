class Product < ActiveRecord::Base
  belongs_to :user
  has_many :offers, :dependent => :destroy
  validates :name, presence: true
  validates :price, presence: true
end
