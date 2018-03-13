class Measure < ApplicationRecord
  validates_presence_of :board_id
  validates_presence_of :luminosity
end
