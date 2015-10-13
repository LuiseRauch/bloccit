require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) { Advertisement.create!(title: "New Ad Title", copy: "New Ad Text", price: 100) }

describe "attributes" do
  it "should respond to title" do
    expect(advertisement).to respond_to(:title)
  end
  it "should respond to copy" do
    expect(advertisement).to respond_to(:copy)
  end
  it "should respond to price" do
    expect(advertisement).to respond_to(:price)
  end
end
end
