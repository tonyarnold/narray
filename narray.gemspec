open("src/narray.h") do |f|
  f.each_line do |l|
    if /NARRAY_VERSION "([\d.]+)"/ =~ l
      NARRAY_VERSION = $1
      break
    end
  end
end

GEMSPEC = Gem::Specification.new do |s|
  s.name = "narray"
  s.version = NARRAY_VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Masahiro Tanaka"]
  s.date = Time.now.strftime("%F")
  s.description = "Numerical N-dimensional Array class"
  s.email = "masa16.tanaka@gmail.com"
  s.extensions = ["extconf.rb"]
  s.files = %w[
ChangeLog
MANIFEST
README.en
README.ja
SPEC.en
SPEC.ja
depend
extconf.rb
mkmath.rb
mknafunc.rb
mkop.rb
na_array.c
na_func.c
na_index.c
na_linalg.c
na_random.c
narray.c
narray.def
narray.h
narray_local.h
lib/narray_ext.rb
lib/nmatrix.rb
]
  s.rdoc_options = %w[
    --title NArray
    --main NArray
    --exclude mk.*
    --exclude extconf\.rb
    --exclude .*\.h
    --exclude lib/
    --exclude .*\.o
    --exclude narray\.so
    --exclude libnarray\.*
  ]
  s.homepage = "http://narray.rubyforge.org/"
  s.require_paths = ["."]
  s.rubyforge_project = "narray"
  s.rubygems_version = "1.8.10"
  s.summary = "N-dimensional Numerical Array class for Ruby"
  s.license = "Ruby"

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
