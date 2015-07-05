require 'spec_helper'

describe WelcomeController do
  describe "GET /" do

    before :each do
      get :index
    end

    it_behaves_like :an_ok_response
  end
end
