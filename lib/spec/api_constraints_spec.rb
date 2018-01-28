require 'spec_helper'

describe ApiConstraints do
  # Use let to define a memoized helper method
  let(:api_contraints_v1) { ApiConstraints.new(version: 1) }
  let(:api_contraints_v2) { ApiConstraints.new(version: 2, default: true) }

  describe 'matches?' do
    context 'when the servers API Version matches the request "Accept" header version' do
      # double is an object that we create to take the place of the real object in a test environment
      request = double(host: 'api.market.dev',
                       headers: {'Accept' => 'application/vnd.marketplace.v1'})
      it { is_expected(api_constraints_v1.matches?(request)}.to be_true }
    end

    context 'when the default version is specified'
      request = double(host: 'api.marketplace.dev')
      it { is_expected(api_constraints_v2.matches?(request).version).to eq(2) }
    end
  end
end
