class Timekeeper < ApplicationRecord
  validates_presence_of :start, :end, :description
end
