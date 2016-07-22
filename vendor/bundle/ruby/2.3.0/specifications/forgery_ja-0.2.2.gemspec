# -*- encoding: utf-8 -*-
# stub: forgery_ja 0.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "forgery_ja"
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["namakesugi"]
  s.date = "2011-06-14"
  s.description = "Create dummy japanese data."
  s.email = ["info@namakesugi.net"]
  s.homepage = "https://github.com/namakesugi/forgery_ja"
  s.rubyforge_project = "forgery_ja"
  s.rubygems_version = "2.5.1"
  s.summary = "Forgery for Japanese Data"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<forgery>, ["~> 0.3.8"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<forgery>, ["~> 0.3.8"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<forgery>, ["~> 0.3.8"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
