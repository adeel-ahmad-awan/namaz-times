class Masjid < ApplicationRecord
  has_many :timings, dependent: :destroy

end
