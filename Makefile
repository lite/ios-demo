default:
	#Set default make action here
	# xcodebuild -target ios-demo -configuration MyMainTarget -sdk iphonesimulator build	

clean:
	-rm -rf build/*

test:
	GHUNIT_CLI=1 xcodebuild -target ios-demo-test -configuration Debug -sdk iphonesimulator build	
