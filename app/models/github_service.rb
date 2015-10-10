class GithubService
  attr_reader :client

  def initialize
    @client = Octokit::Client.new(access_token: ENV['GITHUB_ADMIN_TOKEN'])
  end

  def create_repository(name=nil)
    #http://www.rubydoc.info/github/pengwynn/octokit/Octokit/Client/Repositories#create_repository-instance_method
    name ||= 'test-repo'
    repo_options = {
      description: 'testing descriptions'
    }
    client.create_repository(name, repo_options)
  end
end
