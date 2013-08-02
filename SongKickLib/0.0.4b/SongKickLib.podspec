Pod::Spec.new do |s|
  s.name         = "SongKickLib"
  s.version      = "0.0.4b"
  s.summary      = "Cocoa library for accessing the SongKick API."
  s.homepage     = "https://github.com/umjames/SongKickLib"
  s.license      = 'MIT'
  s.author       = { "Michael James" => "mjames@mapleglensoftware.com" }
  s.source       = { :git => "https://github.com/umjames/SongKickLib.git", :tag => "v#{s.version}" }

  s.ios.deployment_target = '6.1'
  s.osx.deployment_target = '10.7'

  s.source_files = 'SongKickLib/SongKickLib/**/*.{h,m}'

  s.frameworks = 'SystemConfiguration', 'MobileCoreServices'

  s.requires_arc = true

  s.dependency 'AFNetworking', '1.3.1'
  s.prefix_header_contents = <<-EOS
#ifdef __OBJC__
    #import <Foundation/Foundation.h>

    #import <Availability.h>
    #import "SongKickLibMacros.h"
    #if __IPHONE_OS_VERSION_MIN_REQUIRED
        #import <SystemConfiguration/SystemConfiguration.h>
        #import <MobileCoreServices/MobileCoreServices.h>
    #else
        #import <SystemConfiguration/SystemConfiguration.h>
        #import <CoreServices/CoreServices.h>
    #endif
#endif
EOS
end
