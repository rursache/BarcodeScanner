rm -rf "./build/BarcodeScanner.xcframework"

xcodebuild archive \
	-scheme BarcodeScanner-iOS \
	-archivePath "./build/sim.xcarchive" \
	-sdk iphonesimulator \
	SKIP_INSTALL=NO \
        BUILD_LIBRARY_FOR_DISTRIBUTION=YES

mkdir "./build/sim"
mv "./build/sim.xcarchive/Products/Library/Frameworks/BarcodeScanner.framework" "./build/sim/BarcodeScanner.framework"
rm -rf "./build/sim.xcarchive"

xcodebuild archive \
	-scheme BarcodeScanner-iOS \
	-archivePath "./build/ios.xcarchive" \
	-sdk iphoneos \
	SKIP_INSTALL=NO \
        BUILD_LIBRARY_FOR_DISTRIBUTION=YES

mkdir "./build/ios"
mv "./build/ios.xcarchive/Products/Library/Frameworks/BarcodeScanner.framework" "./build/ios/BarcodeScanner.framework"
rm -rf "./build/ios.xcarchive"

xcodebuild -create-xcframework \
	-framework "./build/ios/BarcodeScanner.framework" \
	-framework "./build/sim/BarcodeScanner.framework" \
	-output "./build/BarcodeScanner.xcframework"

rm -rf "./build/ios"
rm -rf "./build/sim"

say "Done"