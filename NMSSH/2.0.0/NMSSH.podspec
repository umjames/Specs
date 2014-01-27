Pod::Spec.new do |s|
  s.name         = "NMSSH"
  s.version      = "2.0.0"
  s.summary      = "NMSSH is a clean, easy-to-use, unit tested framework for iOS and OSX that wraps libssh2."
  s.homepage     = "https://github.com/Lejdborg/NMSSH"
  s.license      = 'MIT'
  s.authors      = { "Christoffer Lejdborg" => "hello@9muses.se", "Tommaso Madonia" => "frugghi@gmail.com" }

  s.source       = { :git => "https://github.com/Lejdborg/NMSSH.git", :tag => s.version.to_s }
  s.source_files = 'NMSSH', 'NMSSH/**/*.{h,m}' 
  s.requires_arc = true
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'

  s.libraries      = 'z', 'ssl', 'ssh2', 'crypto'

  s.ios.source_files = 'NMSSH-iOS', 'NMSSH-iOS/**/*.h'
  s.ios.preserve_paths = 'NMSSH-iOS'
  s.ios.framework = 'CFNetwork'

  s.xcconfig = {
    "OTHER_LDFLAGS" => "-ObjC",
    "LIBRARY_SEARCH_PATHS" => '"$(PODS_ROOT)/NMSSH/NMSSH-iOS/Libraries/lib"'
  }

end
