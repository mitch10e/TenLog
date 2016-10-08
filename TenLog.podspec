Pod::Spec.new do |spec|
	s.name 			= "TenLog"
	s.author		= { "mitch10e" => "mitch10e@gmail.com" }
	s.version 		= "0.0.1"
	s.license		= "MIT"
	
	s.summary		= "Easy to read logging"
	s.description 	= "A nice lightweight extension to make logging simple and easy to read."
	
	s.homepage		= "https://gitlab.com/mitch10e/tenlog"
	s.source		= { :git => "git@gitlab.com:mitch10e/tenlog.git" }

	s.source_files	= ['Source/Classes/**/*']

	s.requires_arc	= true
	s.framework		= "Foundation"
end