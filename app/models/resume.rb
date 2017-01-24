class Resume < ApplicationRecord
	beolngs_to :user
	belong_to :job
end
