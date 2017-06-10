class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug, use: :slugged

  belongs_to :team

  validates :email, presence: true, uniqueness: true

  def full_name
    [first_name, last_name].join(' ')
  end
end