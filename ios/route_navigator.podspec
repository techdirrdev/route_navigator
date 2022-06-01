#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint route_navigator.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'route_navigator'
  s.version          = '0.0.1'
  s.summary          = 'This package helps to manage the navigate between screens in an elegant and easy way.'
  s.description      = <<-DESC
This package helps to manage the navigate between screens in an elegant and easy way.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
