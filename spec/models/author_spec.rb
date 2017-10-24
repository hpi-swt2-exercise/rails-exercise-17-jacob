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
end