require 'spec_helper'

describe GithubService do
  describe 'client' do
    it 'correctly attaches to service' do
      service = GithubService.new
      expect(service.client.user).to eq('css-koans-admin')
    end
  end
end
