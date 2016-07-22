# -*- encoding: utf-8 -*-
# stub: takarabako 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "takarabako"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["willnet"]
  s.date = "2013-11-07"
  s.description = "random Japanese name of game item generator"
  s.email = ["netwillnet@gmail.com"]
  s.executables = ["takarabako"]
  s.files = ["bin/takarabako"]
  s.homepage = "https://github.com/willnet/takarabako"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "random Japanese name of game item generator"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
