class Poll < ActiveRecord::Base
	def vote answer
		update(yes_no: answer)
	end
end
