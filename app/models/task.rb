class Task < ApplicationRecord

	# Aqui declaramos que cada tarrefa so pode pertencer a um unico user
	belongs_to :user
end
