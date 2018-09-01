class Locality < ApplicationRecord
validates :name, presence: true, uniqueness: true
  validates :codlocality, presence: true
end
