class User < ApplicationRecord
  belongs_to :leader, optional: true, class_name: "User"

  has_many :couches, inverse_of: 'owner'
end
