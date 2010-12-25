# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{referee}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ethan Turkeltaub"]
  s.date = %q{2010-08-20}
  s.description = %q{An easy way to communicate with the Dribbble API.}
  s.email = %q{ethan.turkeltaub@gmail.com}
  s.extra_rdoc_files = ["CHANGELOG", "LICENSE", "README.rdoc", "lib/referee.rb", "lib/referee/httparty/icebox.rb", "lib/referee/players.rb", "lib/referee/shots.rb"]
  s.files = ["CHANGELOG", "LICENSE", "README.rdoc", "Rakefile", "lib/referee.rb", "lib/referee/httparty/icebox.rb", "lib/referee/players.rb", "lib/referee/shots.rb", "Manifest", "referee.gemspec"]
  s.homepage = %q{http://ethan.heroku.com/projects#referee}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Referee", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{referee}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{An easy way to communicate with the Dribbble API.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<httparty>, [">= 0"])
    else
      s.add_dependency(%q<httparty>, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0"])
  end
end
