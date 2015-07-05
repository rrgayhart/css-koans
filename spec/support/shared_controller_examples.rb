shared_examples_for :an_ok_response do
  it "returns a 200" do
    expect(response.status).to be(200)
  end
end

shared_examples_for :a_created_response do
  it "returns a 201" do
    expect(response.status).to be(201)
  end
end

shared_examples_for :a_no_content_response do
  it "returns a 204" do
    expect(response.status).to be(204)
  end
end

shared_examples_for :a_redirect_response do
  it "returns a 302" do
    expect(response.status).to be(302)
  end
end

shared_examples_for :a_bad_request_response do
  it "returns a 400" do
    expect(response.status).to be(400)
  end
end

shared_examples_for :an_unauthorized_response do
  it "returns a 401" do
    expect(response.status).to be(401)
  end
end

shared_examples_for :a_not_found_response do
  it "returns a 404" do
    expect(response.status).to be(404)
  end
end
