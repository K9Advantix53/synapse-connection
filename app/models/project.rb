class Project < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true

  belongs_to :owner, class_name: "User", foreign_key: "owner_id"

  has_many :assignments
  #USERS NOT CODERS DO PROJECT.USERS NOT CODERS U DUMDUM
  has_many :users, through: :assignments, foreign_key: "coder_id"
end
