require 'rails_helper'

RSpec.describe Anime, type: :model do
  it { is_expected.to validate_presence_of(:title) }    it { is_expected.to validate_presence_of(:release_date) }  end
end