require 'spec_helper'

describe Killbill::Securenet::PaymentPlugin do

  include ::Killbill::Plugin::ActiveMerchant::RSpec

  before(:each) do
    Dir.mktmpdir do |dir|
      file = File.new(File.join(dir, 'securenet.yml'), 'w+')
      file.write(<<-eos)
:securenet:
  :test: true
# As defined by spec_helper.rb
:database:
  :adapter: 'sqlite3'
  :database: 'test.db'
      eos
      file.close

      @plugin = build_plugin(::Killbill::Securenet::PaymentPlugin, 'securenet', File.dirname(file))

      # Start the plugin here - since the config file will be deleted
      @plugin.start_plugin
    end
  end

  it 'should start and stop correctly' do
    @plugin.stop_plugin
  end
end
