# -*- encoding: utf-8 -*-
# stub: openpgp 0.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "openpgp"
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Arto Bendiken"]
  s.date = "2010-07-02"
  s.description = "    OpenPGP.rb is a pure-Ruby implementation of the OpenPGP Message Format\n    (RFC 4880), the most widely-used e-mail encryption standard in the world.\n"
  s.email = "arto.bendiken@gmail.com"
  s.executables = ["openpgp"]
  s.files = ["bin/openpgp"]
  s.homepage = "http://openpgp.rubyforge.org/"
  s.licenses = ["Public Domain"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.1")
  s.requirements = ["GnuPG >= 1.4.7 (not required, but enables extra functionality)"]
  s.rubyforge_project = "openpgp"
  s.rubygems_version = "2.4.5.1"
  s.summary = "A pure-Ruby implementation of the OpenPGP Message Format (RFC 4880)."

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<yard>, [">= 0.5.8"])
      s.add_development_dependency(%q<rspec>, [">= 1.3.0"])
      s.add_runtime_dependency(%q<open4>, [">= 1.0.1"])
    else
      s.add_dependency(%q<yard>, [">= 0.5.8"])
      s.add_dependency(%q<rspec>, [">= 1.3.0"])
      s.add_dependency(%q<open4>, [">= 1.0.1"])
    end
  else
    s.add_dependency(%q<yard>, [">= 0.5.8"])
    s.add_dependency(%q<rspec>, [">= 1.3.0"])
    s.add_dependency(%q<open4>, [">= 1.0.1"])
  end
end
