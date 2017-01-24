class Resume < ApplicationRecord
	beolngs_to :user
	belong_to :job

	validates :content, presence: true
end
