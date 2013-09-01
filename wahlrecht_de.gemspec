# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "wahlrecht_de"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tobi Fankh\u{e4}nel"]
  s.date = "2013-09-01"
  s.description = "= wahlrecht_de\n\nProvides summary analysis of current poll results from wahlrecht.de\n\n== Contributing to wahlrecht_de\n \n* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.\n* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.\n* Fork the project.\n* Start a feature/bugfix branch.\n* Commit and push until you are happy with your contribution.\n* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.\n* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.\n\n== Copyright\n\nCopyright (c) 2013 Tobi Fankh\u{e4}nel. See LICENSE.txt for\nfurther details.\n\n"
  s.email = "fank1@gmx.de"
  s.executables = ["wahlrecht_de"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/wahlrecht_de",
    "doc/LICENSE_txt.html",
    "doc/WahlrechtDe.html",
    "doc/WahlrechtDe/Dataline.html",
    "doc/WahlrechtDe/Runner.html",
    "doc/WahlrechtDe/Survey.html",
    "doc/created.rid",
    "doc/images/add.png",
    "doc/images/arrow_up.png",
    "doc/images/brick.png",
    "doc/images/brick_link.png",
    "doc/images/bug.png",
    "doc/images/bullet_black.png",
    "doc/images/bullet_toggle_minus.png",
    "doc/images/bullet_toggle_plus.png",
    "doc/images/date.png",
    "doc/images/delete.png",
    "doc/images/find.png",
    "doc/images/loadingAnimation.gif",
    "doc/images/macFFBgHack.png",
    "doc/images/package.png",
    "doc/images/page_green.png",
    "doc/images/page_white_text.png",
    "doc/images/page_white_width.png",
    "doc/images/plugin.png",
    "doc/images/ruby.png",
    "doc/images/tag_blue.png",
    "doc/images/tag_green.png",
    "doc/images/transparent.png",
    "doc/images/wrench.png",
    "doc/images/wrench_orange.png",
    "doc/images/zoom.png",
    "doc/index.html",
    "doc/js/darkfish.js",
    "doc/js/jquery.js",
    "doc/js/navigation.js",
    "doc/js/search.js",
    "doc/js/search_index.js",
    "doc/js/searcher.js",
    "doc/rdoc.css",
    "doc/table_of_contents.html",
    "lib/dataline.rb",
    "lib/datapoint.rb",
    "lib/runner.rb",
    "lib/survey.rb",
    "spec/dataline_spec.rb",
    "spec/spec_helper.rb",
    "spec/survey_spec.rb",
    "wahlrecht_de.gemspec"
  ]
  s.homepage = "http://github.com/Tobi-Fankhaenel/wahlrecht_de"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0")
  s.rubygems_version = "2.0.3"
  s.summary = "Provides summary analysis of current poll results from wahlrecht.de"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.14.1"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.0.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.7"])
      s.add_development_dependency(%q<simplecov>, [">= 0.7.1"])
      s.add_development_dependency(%q<nokogiri>, ["~> 1.5.10"])
      s.add_development_dependency(%q<rake>, ["~> 10.1.0"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.14.1"])
      s.add_dependency(%q<rdoc>, ["~> 4.0.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.7"])
      s.add_dependency(%q<simplecov>, [">= 0.7.1"])
      s.add_dependency(%q<nokogiri>, ["~> 1.5.10"])
      s.add_dependency(%q<rake>, ["~> 10.1.0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.14.1"])
    s.add_dependency(%q<rdoc>, ["~> 4.0.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.7"])
    s.add_dependency(%q<simplecov>, [">= 0.7.1"])
    s.add_dependency(%q<nokogiri>, ["~> 1.5.10"])
    s.add_dependency(%q<rake>, ["~> 10.1.0"])
  end
end

