require 'spec_helper'

describe Handlebars do
  it "should has version" do
    Handlebars.version.should == 1.0.0
  end

  it "should enable to precompile handlebars template" do
    begin
      Handlebars.precompile "<p>Hello World</p>"
      Handlebars.precompile "<p>{{name}}</p>"
      Handlebars.precompile "{{#each people}}{{name}}{{/each}}"
      Handlebars.precompile "{{#each people}}{{> person}}{{/people}}"
    rescue
      true.should be_false
    end
  end
end
