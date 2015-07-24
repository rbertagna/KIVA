class Donee < ActiveRecord::Base
  has_many :donations
end