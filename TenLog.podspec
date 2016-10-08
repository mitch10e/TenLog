Pod::Spec.new do |spec|
	spec.name 			= "TenLog"
	spec.author			= { "mitch10e" => "mitch10e@gmail.com" }
	spec.version 		= "1.0.0"
	spec.license		= "MIT"
	
	spec.summary		= "Easy to read logging"
	spec.description 	= "A nice lightweight extension to make logging simple and easy to read. // Swift 3"
	
	spec.homepage		= "https://gitlab.com/mitch10e/tenlog"
	spec.source			= { :git => "https://github.com/mitch10e/TenLog.git", tag: spec.version}

	spec.source_files	= ['Source/Classes/**/*']

	spec.platform		= :ios, "10.0"
	spec.requires_arc	= true
	spec.framework		= "Foundation"
end