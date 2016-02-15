require File.expand_path('../../lib/urban_dictionary', __FILE__)

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
end

module Test
  def self.load_fixture(name)
    File.read(File.expand_path("../html/#{name}", __FILE__))
  end
end
