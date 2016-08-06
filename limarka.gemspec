# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'limarka/version'

Gem::Specification.new do |spec|
  spec.name          = "limarka"
  spec.version       = Limarka::VERSION
  spec.authors       = ["Eduardo de Santana Medeiros Alexandre"]
  spec.email         = ["eduardo.ufpb@gmail.com"]

  spec.summary       = %q{Ferramenta para compilação de trabalhos acadêmicos com markdown e abnTeX2}
  spec.description   = %q{Com essa ferramenta você poderá escrever sua monografia, dissertação ou tese utilizando Markdown (linguagem mais simples que Latex).}
  spec.homepage      = "https://github.com/abntex/trabalho-academico-pandoc-abntex2"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency "pry-byebug"

  spec.add_dependency "gli"
  spec.add_dependency "colorize"
  spec.add_dependency "pdf-forms"
  spec.add_dependency "github_changelog_generator"
  spec.add_dependency "pandoc-ruby"

end
