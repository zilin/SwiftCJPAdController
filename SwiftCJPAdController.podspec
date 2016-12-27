Pod::Spec.new do |s|

  s.name         = "SwiftCJPAdController"
  s.version      = "0.0.1"
  s.summary      = "A simple Swift wrapper for CJPAdController."
  s.description  = <<-DESC
SwiftCJPAdController is a simple wrapper for CJPAdController in Swift.
                   DESC
  s.homepage     = "http://EXAMPLE/SwiftCJPAdController"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = "MIT"
  s.author             = { "Zilin Du" => "zilin.du@gmail.com" }
  s.platform     = :ios, "6.0"
  s.source       = {
      :git => "http://github.com/zilin/SwiftCJPAdController.git",
      :tag => "#{s.version}"
  }

  s.source_files  = "*.swift"

  s.dependency "CJPAdController", "~> 1.7"
  s.pod_target_xcconfig = {
      'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/CJPAdController',
      'OTHER_LDFLAGS'          => '$(inherited) -undefined dynamic_lookup'
  }

end
