class String
	def fill_cn(length, pad = "  ")
		if self.length < length
			out = self.dup
			(length - self.length).times{out << pad}
			out
		else
			self
		end
	end
end