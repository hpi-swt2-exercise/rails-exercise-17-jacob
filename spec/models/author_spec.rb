require 'rails_helper'

RSpec.describe Author, type: :model do
  subject {
    described_class.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
  }

  it "should create Author with correct fields" do
    expect(subject.first_name).to eq('Alan')
    expect(subject.last_name).to eq('Turing')
    expect(subject.homepage).to eq('http://wikipedia.org/Alan_Turing')
  end

  it "should return name as combination of first name and last name" do
    expect(subject.name).to eq('Alan Turing')
  end

  describe '#valid?' do

    let (:valid_author) { FactoryGirl.build(:author) }

    it "should validate factory author" do
      expect(valid_author).to be_valid
    end

    let(:invalid_author) { FactoryGirl.build(:author, :last_name => nil) }

    it "should not validate without last name" do
      expect(invalid_author).to_not be_valid
    end
  end
end