class Item < ApplicationRecord
  belongs_to :user, required: true
end
