#
#  Be sure to run `pod spec lint SwiftySwiftSideMenu.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "SwiftySideMenu"
  s.version      = "1.0"
  s.summary      = "A simple side menu for iOS with Swift"
  s.homepage     = "https://github.com/sadmansamee/SwiftySideMenu"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "sadman samee" => "sadman.tonmoy@gmail.com" }
  s.requires_arc      = true
  s.platform = :ios, "8.0"
  s.source   = { :git => "https://github.com/sadmansamee/SwiftySideMenu.git", :tag => "1.0"}
  s.source_files      = "Library/SwiftySideMenu.swift", "Library/SwiftySideMenuNavigationController.swift"

end
