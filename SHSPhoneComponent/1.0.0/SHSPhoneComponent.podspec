# Be sure to run `pod spec lint SHSPhoneComponent.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.

Pod::Spec.new do |s|
  s.name         = "SHSPhoneComponent"
  s.version      = "1.0.0"
  s.summary      = "UITextField and NSFormatter subclasses for formatting phone numbers. Allow different formats for different countries(patterns)."

  s.homepage     = "https://github.com/Serheo/SHSPhoneComponent"
  s.license      = 'MIT'

  s.author       = { "Serheo Shatunov" => "sshatunov@yandex.ru" }

  s.source       = { :git => "https://github.com/Serheo/SHSPhoneComponent.git", :tag => "1.0.0" }
  s.platform     = :ios, '5.0'
  s.source_files = 'SHSPhoneComponents'
  # s.exclude_files = 'Example'
  s.requires_arc = true
end
