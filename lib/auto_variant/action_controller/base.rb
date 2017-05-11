module AutoVariant
	module ActionController
		module Base

			def set_variant
				if request.device_type == :smartphone
					request.variant = :mobile
				end
				puts 'set_variant called'
			end

		end
	end
end
