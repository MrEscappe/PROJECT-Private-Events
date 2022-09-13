# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events, foreign_key: :creator_id
  has_many :event_attendings, foreign_key: :attendee_id, dependent: :destroy
  has_many :attended_events, through: :event_attendings

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
end
