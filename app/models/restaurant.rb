class Restaurant < ActiveRecord::Base
  validates :name, presence: true

  validates :neighborhood, presence: true
end