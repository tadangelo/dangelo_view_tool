
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dangelo_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "dangelo_view_tool"
  spec.version       = DangeloViewTool::VERSION
  spec.authors       = ["Tania D'Angelo"]
  spec.email         = ["tania.a.dangelo@outlook.com"]

  spec.summary       = %q{View specific method for my applications.}
  spec.description   = %q{provides generated html data for Rails application.}
  spec.homepage      = "https://taniadangelo.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "'rspec'", "~> 3.0"
end
