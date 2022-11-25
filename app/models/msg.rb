class Msg < ApplicationRecord

  validates :title, :body, presence: true
end
