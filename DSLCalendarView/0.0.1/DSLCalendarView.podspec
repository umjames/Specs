
Pod::Spec.new do |s|
  s.name         = "DSLCalendarView"
  s.version      = "0.0.1"
  s.summary      = "Simple calendar view for iOS."
  s.description  = "DSLCalendar view is an iOS control that displays a calendar similar to the system calendar. It allows the user to select a single date or a date range."
  s.author       = { "Pete" => "pete@dativestudios.com" }
  s.homepage     = "https://github.com/PeteC/DSLCalendarView"
  s.screenshots  = "https://github.com/PeteC/DSLCalendarView/raw/images/Screenshot.png"
  s.license      = { :type => "Custom", :text => "Copyright © 2012 Pete Callaway. All rights reserved."
               }
  s.source       = { :git => "https://github.com/PeteC/DSLCalendarView.git", :commit => "cd64b97529fd25c3b610c1681e1cfbf301a07cc0" }

  s.requires_arc = true
  s.platform = :ios, '5.0'

  s.source_files = 'DSLCalendarView/*.{h,m}'
  s.resources = "DSLCalendarView/Images/*.png", "DSLCalendarView/*.xib"

end
