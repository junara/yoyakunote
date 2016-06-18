# -*- encoding: utf-8 -*-
# stub: honoka-rails 3.3.6.4 ruby lib

Gem::Specification.new do |s|
  s.name = "honoka-rails"
  s.version = "3.3.6.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Shota Iguchi"]
  s.date = "2016-06-05"
  s.description = "To mount Honoka on rails. Honoka is a simple and friendly japanese bootstrap-theme."
  s.email = ["e.iguchi1124@gmail.com"]
  s.homepage = "https://github.com/iguchi1124/honoka-rails"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "To mount Honoka a simple bootstrap-theme on rails."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<capybara>, [">= 2.5.0"])
      s.add_development_dependency(%q<poltergeist>, [">= 0"])
      s.add_development_dependency(%q<actionpack>, [">= 4.1.5"])
      s.add_development_dependency(%q<activesupport>, [">= 4.1.5"])
      s.add_development_dependency(%q<json>, [">= 1.8.1"])
      s.add_development_dependency(%q<sprockets-rails>, [">= 2.1.3"])
      s.add_development_dependency(%q<jquery-rails>, [">= 3.1.0"])
      s.add_development_dependency(%q<uglifier>, [">= 0"])
      s.add_development_dependency(%q<sass-rails>, [">= 0"])
      s.add_development_dependency(%q<coffee-rails>, [">= 0"])
    else
      s.add_dependency(%q<capybara>, [">= 2.5.0"])
      s.add_dependency(%q<poltergeist>, [">= 0"])
      s.add_dependency(%q<actionpack>, [">= 4.1.5"])
      s.add_dependency(%q<activesupport>, [">= 4.1.5"])
      s.add_dependency(%q<json>, [">= 1.8.1"])
      s.add_dependency(%q<sprockets-rails>, [">= 2.1.3"])
      s.add_dependency(%q<jquery-rails>, [">= 3.1.0"])
      s.add_dependency(%q<uglifier>, [">= 0"])
      s.add_dependency(%q<sass-rails>, [">= 0"])
      s.add_dependency(%q<coffee-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<capybara>, [">= 2.5.0"])
    s.add_dependency(%q<poltergeist>, [">= 0"])
    s.add_dependency(%q<actionpack>, [">= 4.1.5"])
    s.add_dependency(%q<activesupport>, [">= 4.1.5"])
    s.add_dependency(%q<json>, [">= 1.8.1"])
    s.add_dependency(%q<sprockets-rails>, [">= 2.1.3"])
    s.add_dependency(%q<jquery-rails>, [">= 3.1.0"])
    s.add_dependency(%q<uglifier>, [">= 0"])
    s.add_dependency(%q<sass-rails>, [">= 0"])
    s.add_dependency(%q<coffee-rails>, [">= 0"])
  end
end
