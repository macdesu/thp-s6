#!/usr/bin/ruby

def time_string(time)
	clock = [0, 0, 0]
	clock[0] = time / 3600
	clock[1] = (time % 3600) / 60
	clock[2] = ((time % 3600) % 60) % 60
	return "%02d:%02d:%02d" % clock
end