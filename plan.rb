module Plan
  class App
    def name
      "foo"
    end

    def version
      "0.0.1"
    end

    def description
      "Description of my gem"
    end

    def authors
      ["My Name"]
    end

    def email
      ["my_name@hashdog.com"]
    end

    def homepage
      "http://hashdog.com/"
    end

    def license
      "MIT"
    end

    def klass_name
      Object.const_get(name.split("_").each {|s| s.capitalize! }.join(""))
    end

    def destination
      "#{name}.gemspec"
    end
  end

  class Main < App
    def destination
      "#{name}.rb"
    end
  end

  class Base < App
    def destination
      "#{name}/base.rb"
    end

    def development_url
      "http://localhost:9292"
    end

    def production_url
      "http://api.hashdog.com"
    end
  end

  class Resource < App
    def destination
      "#{name}/resource.rb"
    end
  end


  class Response < App
    def destination
      "#{name}/response.rb"
    end
  end

  class Version < App
    def destination
      "#{name}/version.rb"
    end
  end

end
