class Project < ApplicationRecord
  has_many :tasks, -> { order('size DESC') }
end
