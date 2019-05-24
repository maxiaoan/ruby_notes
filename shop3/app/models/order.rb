class Order < ApplicationRecord
	#设置初始值
	after_initialize :set_defaults

	private

	def set_defaults
		self.quantity ||= 1
	end

end
