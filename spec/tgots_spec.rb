require "spec_helper"

RSpec.describe Awesomeapp do
  it "has a version number" do
    expect(Awesomeapp::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
