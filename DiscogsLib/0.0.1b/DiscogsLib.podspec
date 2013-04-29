Pod::Spec.new do |s|
  s.name         = "DiscogsLib"
  s.version      = "0.0.1b"
  s.summary      = "Cocoa library for accessing the Discogs API."
  s.homepage     = "https://github.com/umjames/DiscogsLib"
  s.license      = 'MIT'
  s.author       = { "Michael James" => "mjames@mapleglensoftware.com" }
  s.source       = { :git => "https://github.com/umjames/DiscogsLib.git", :tag => "v0.0.1b" }

  s.ios.deployment_target = '6.1'
  s.osx.deployment_target = '10.7'

  s.source_files = 'DiscogsLib/DiscogsLib/*.{h,m}'

  s.frameworks = 'SystemConfiguration', 'MobileCoreServices'

  s.requires_arc = true

  s.dependency 'AFOAuth1Client', '0.1.0'
end
