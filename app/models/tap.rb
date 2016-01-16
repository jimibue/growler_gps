class Tap < ActiveRecord::Base
  belongs_to :station
  belongs_to :beer
end
