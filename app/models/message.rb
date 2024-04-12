class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end

<<<<<<< HEAD
  validates :content, presence: true

=======
>>>>>>> 20b6d6ba6943f67f6505c9cce90264792ed01d38
end
