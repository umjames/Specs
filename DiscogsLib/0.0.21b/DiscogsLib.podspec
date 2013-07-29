Pod::Spec.new do |s|
  s.name         = "DiscogsLib"
  s.version      = "0.0.21b"
  s.summary      = "Cocoa library for accessing the Discogs API."
  s.homepage     = "https://github.com/umjames/DiscogsLib"
  s.license      = 'MIT'
  s.author       = { "Michael James" => "mjames@mapleglensoftware.com" }
  s.source       = { :git => "https://github.com/umjames/DiscogsLib.git", :tag => "v#{s.version}" }

  s.ios.deployment_target = '6.1'
  s.osx.deployment_target = '10.7'

  s.source_files = 'DiscogsLib/DiscogsLib/**/*.{h,m}'

  s.frameworks = 'SystemConfiguration', 'MobileCoreServices'

  s.requires_arc = true

  s.dependency 'AFOAuth1Client', '0.2.1'
  s.prefix_header_contents = <<-EOS
#ifdef __OBJC__
    #import <Foundation/Foundation.h>

    #import <Availability.h>
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
