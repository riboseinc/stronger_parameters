require "spec_helper"

RSpec::describe StrongerParameters do
  it "has a version number" do
    expect(StrongerParameters::VERSION).to be_a(String)
    expect(StrongerParameters::VERSION).not_to be_empty
  end
end
