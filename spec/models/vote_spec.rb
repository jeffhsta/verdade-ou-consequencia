require 'spec_helper'

describe Vote do
  describe "Associations/Validations" do
    it { should belong_to :question }
    it { should belong_to :user }
    it { should validate_presence_of :user }
  end
end
