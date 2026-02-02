require 'rails_helper'

RSpec.describe "Seed Data Check", type: :request do
  before(:all) do
    Rails.application.load_seed 
  end

  it "contains the seeded books in the test database" do
    expect(Book.count).to eq(5) 
  end
end