require 'execjs'
require 'handlebars/source'
require 'handlebars/version'

module Handlebars
  module Source
    def self.path
      @path ||= bundled_path
    end

    def self.contents
      @contents ||= File.read(path)
    end

    def self.version
      # Handlebars.VERSION = "1.0.0";
      @version ||= contents[/Handlebars\.VERSION\s=\s\"([\d.]+)\"/, 1]
    end

    def self.context
      @context ||= ExecJS.compile(contents)
    end
  end

  class << self
    def version
      Source.version
    end

    def precompile(script)
      script = script.read if script.respond_to?(:read)
      Source.context.call("Handlebars.precompile", script)
    end
  end
end
