class Person < ActiveRecord::Base
  belongs_to :organization
  has_many :contracts
  has_many :clients, through: :contracts
  has_many :addresses, as: :addressable
end
