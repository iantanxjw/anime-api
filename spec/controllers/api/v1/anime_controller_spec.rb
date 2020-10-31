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
end
