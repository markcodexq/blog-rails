require "spec_helper"
require "rails_helper"

describe Comment do
  it { should belong_to :article }

  describe "validates comment length" do
    it { should validate_length_of(:body).is_at_most(4000) }
  end

end