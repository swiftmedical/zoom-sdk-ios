#
#  Be sure to run `pod spec lint zoom-sdk-ios.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "zoom-sdk"
  spec.version      = "4.4.55968.0904"
  spec.summary      = "Original framework for Zoom.us service"
  spec.homepage     = "https://github.com/zoom/zoom-sdk-ios"
  spec.license      = { :type => "Commercial", :file => "LICENSE.md" }
  spec.author       = { "Edwin Liang" => "edwin@swiftmedical.io" }

  spec.swift_version              = "3.0"
  spec.ios.deployment_target      = "11.0"

  spec.source       = { :git => "https://github.com/swiftmedical/zoom-sdk-ios.git", :tag => "v#{spec.version}" }

  spec.libraries = "z", "c++", "sqlite3"
  spec.frameworks = "Foundation", "UIKit", "VideoToolbox", "CoreBluetooth", "ReplayKit", "CoreMotion"

  spec.default_subspec = 'Core'

  spec.subspec 'Core' do |subspec|
    subspec.ios.source_files           = "MobileRTC.framework/Headers/**/*.{h,m}"
    subspec.ios.public_header_files    = "MobileRTC.framework/Headers/**/*.{h,m}"
    subspec.ios.vendored_frameworks    = "MobileRTC.framework"

    subspec.ios.resource = "MobileRTCResources.bundle"
  end

  # spec.subspec 'ShareScreen' do |subspec|
  #   subspec.ios.dependency 'Core'

  #   subspec.ios.source_files            = "MobileRTCScreenShare.framework/Headers/**/*.{h,m}"
  #   subspec.ios.public_header_files     = "MobileRTCScreenShare.framework/Headers/**/*.{h,m}"
  #   subspec.ios.vendored_frameworks     = "MobileRTCScreenShare.framework"
  # end

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"
end
