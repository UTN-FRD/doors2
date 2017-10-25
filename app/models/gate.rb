class Gate < ApplicationRecord
	has_many :keys, dependent: :destroy
	validates :codigo, presence: true,
                    length: { minimum: 1 }
end
