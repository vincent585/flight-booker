# frozen_string_literal: true

# Airport model
class Airport < ApplicationRecord
  has_many :flights
end
