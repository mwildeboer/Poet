Pod::Spec.new do |s|
  s.name         = "Poet"
  s.version      = "0.1"
  s.summary      = "Poet is a simple NSAttributedString builder."

  s.description  = <<-DESC
                   Poet is a builder for *NSAttributedString* and *NSDictionary* with text attributes. By default, you have to use a *NSDictionary* to create NSAttributedStrings. This is rather annoying because your app will crash if the a value is nil. Plus the formatter in Xcode messes up the format of the *NSDictionary* literal most of the time. Poet is more simple and more elegant.
                   DESC

  s.license       = 'BSD'
  s.homepage      = 'https://github.com/mwildeboer/Poet'
  s.author       = { "Menno Wildeboer" => "ome.menno@gmail.com" }
  s.requires_arc = true
  s.platform      = :ios, '7.0'
  s.source       = { :git => "https://github.com/mwildeboer/Poet.git", :tag => "0.1" }
  s.source_files  = 'Poet', 'Poet/**/*.{h,m}'
end
