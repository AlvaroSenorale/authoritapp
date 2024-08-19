class User < ApplicationRecord
  belongs_to :leader, optional: true, class_name: "User"
end
