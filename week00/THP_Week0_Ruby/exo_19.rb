#!/usr/bin/ruby

n = 0
i = 1
list = []

until i > 50
	unless i > 9
		list << "jean.dupont.#{n.to_s}#{i.to_s}@email.fr"
	else
		list << "jean.dupont.#{i.to_s}@email.fr"
	end
	i = i + 1
end

i = 1

until i > 50
	puts list[i]
	i = i + 2
end