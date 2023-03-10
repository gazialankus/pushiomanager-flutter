# Copyright © 2023, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint pushiomanager_flutter.podspec` to validate before publishing.

Pod::Spec.new do |s|
  s.name             = 'pushiomanager_flutter'
  s.version          = '6.54.0'
  s.summary          = 'Flutter Plugin for Responsys Mobile SDK'
  s.description      = 'Flutter Plugin for Responsys Mobile SDK'
  s.homepage         = 'https://www.github.com/oracle/pushiomanager-flutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Oracle Corp.' => 'neerhaj.joshi@oracle.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'
  s.preserve_paths = 'PushIOManager.xcframework'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework PushIOManager' }
  s.vendored_frameworks = 'PushIOManager.xcframework'
  s.preserve_paths 	  = "PushIOManager.xcframework/**/*"
  s.libraries               = 'sqlite3'
  s.frameworks              = 'UserNotifications', 'CoreLocation', 'Foundation', 'UIKit'
  s.ios.frameworks          = 'WebKit'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 arm64' }
end