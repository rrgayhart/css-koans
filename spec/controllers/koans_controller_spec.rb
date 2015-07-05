require 'spec_helper'

describe KoansController do
  let(:koan) { create(:koan) }

  describe "GET /koans/:id" do
    before :each do
      get :show, id: koan.id
    end

    it_behaves_like :an_ok_response

    it 'assigns a koan' do
      expect(assigns(:koan)).to eq(koan)
    end
  end
end
