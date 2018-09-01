require 'rails_helper'

# Test suite for the Todo model
RSpec.describe Locality, type: :model do
  # Association test
  # ensure Todo model has a 1:m relationship with the Item model
   it { should validate_presence_of(:name) }
  it { should validate_presence_of(:codlocality) }
  it { should have_many(:projects).dependent(:destroy) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:startdate) }
end