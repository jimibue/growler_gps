class Station < ActiveRecord::Base

belongs_to :brewery
has_many :taps
has_many :beers, through: :taps;
end
