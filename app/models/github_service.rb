class GithubService
  attr_reader :client

  def initialize
    @client = Octokit::Client.new(access_token: ENV['GITHUB_ADMIN_TOKEN'])
  end
end
