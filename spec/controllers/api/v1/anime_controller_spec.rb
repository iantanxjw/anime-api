require "rails_helper"

RSpec.describe Api::V1::AnimeController, type: :controller do
  let(:valid_attributes) do
    {
      title: "Attack on Titan",
      plot: "Teen Comedy",
      release_date: "09-06-2015",
    }
  end

  let(:invalid_attributes) do
    { release_date: nil }
  end

  # Rest of the code
  describe "POST #create" do
    context "with valid params" do
      it "creates a new Anime" do
        expect do
          post :create, params: { anime: valid_attributes }
        end.to change(Anime, :count).by(1)
      end

      it "returns a 201 status code" do

        post :create, params: { anime: valid_attributes }
        expect(response).to have_http_status(:created)
      end
    end

    context "with invalid params" do
      it "does not create a new Anime" do
        expect do
          post :create, params: { anime: invalid_attributes }
        end.to change(Anime, :count).by(0)
      end

      it "returns a 422 status code" do

        post :create, params: { anime: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end


