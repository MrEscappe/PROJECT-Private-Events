# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'

  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :location, presence: true
  validates :creator, presence: true

end
