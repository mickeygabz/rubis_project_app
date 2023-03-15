require 'rails_helper'

RSpec.describe Mission, type: :model do
  subject {
    described_class.new(title: "Anything",
                        description: "Lorem ipsum",
                        website: "website url",
                        manufacturer: "who manufactured?")
  }

   it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

   it "is not valid without website url" do
    subject.website = nil
    expect(subject).to_not be_valid
  end

   it "is not valid without manufacturer" do
    subject.manufacturer = nil
    expect(subject).to_not be_valid
  end

   it "is not valid without description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end
end
