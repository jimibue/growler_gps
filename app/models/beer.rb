class Beer < ActiveRecord::Base

belongs_to :brewery
has_many :taps
has_many :stations, through: :taps;
end
