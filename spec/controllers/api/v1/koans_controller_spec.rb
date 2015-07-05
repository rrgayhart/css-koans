require "spec_helper"

describe Api::V1::KoansController do
  let!(:koan){ create(:koan) }

  describe "Get /api/v1/koans/:id" do
    context "with a valid koan id" do
      before :each do
        get :show, {id: koan.id}
      end

      it_behaves_like :an_ok_response
    end
  end

  context "with an invalid koan id" do
    before :each do
      get :show, {id: 670}
    end

    it_behaves_like :a_not_found_response
  end
end
