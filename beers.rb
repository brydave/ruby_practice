beers = 99

while beers > 95
	puts beers.to_s + ' bottles of beer on the wall, ' + beers.to_s + ' bottles of beer...'
	beers = beers -1
	puts 'You take one down and Pass it around, ' + beers.to_s + ' bottles of beer on the wall.'
end