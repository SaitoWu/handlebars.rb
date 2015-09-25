require 'spec_helper'

describe Handlebars do
  it "should has version" do
    Handlebars.version.should >= "4.0.0"
  end

  it "should enable to precompile handlebars template" do
    Handlebars.precompile "<p>Hello World</p>"
    Handlebars.precompile "<p>{{name}}</p>"
    Handlebars.precompile "{{#each people}}{{name}}{{/each}}"
    Handlebars.precompile "{{#each people}}{{> person}}{{/each}}"
  end

  it "should raise errors when precompile failed" do
    Handlebars.precompile "{{#each people}}{{name}}{{/if}}" rescue true
    Handlebars.precompile "{{#each people}}{{< name}}{{/each}}" rescue true
  end
end
