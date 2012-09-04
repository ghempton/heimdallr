require 'spec_helper'
require 'mongoid/models'

require 'proxy_examples'

describe Heimdallr::Proxy do
  context 'with Mongoid' do
    run_specs(Mongoid::User, Mongoid::Article, Mongoid::DontSave)

    context 'with subclass' do
      # This will not work due to the '_type' property
      #run_specs(Mongoid::User, Mongoid::SubArticle, Mongoid::DontSave)
    end
  end
end
