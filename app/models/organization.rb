class Organization < ActiveRecord::Base
  has_many :people
  has_many :addresses, as: :addressable
end
