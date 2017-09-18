require_relative 'coin'

describe 'convert' do

  it "returns 'P' when 1 cent remains" do
    expect(convert(1)).to eq 'P'
  end

  it "returns 'PPPP' when 4 cents remain" do
    expect(convert(4)).to eq 'PPPP'
  end

  it "returns 'N' when 5 cents remain" do
    expect(convert(5)).to eq 'N'
  end

  it "returns 'NPP' when 7 cents remain" do
    expect(convert(7)).to eq 'NPP'
  end

  it "returns 'D' when 10 cents remain" do
    expect(convert(10)).to eq 'D'
  end

  it "returns 'DPPP' when 13 cents remain" do
    expect(convert(13)).to eq 'DPPP'
  end

  it "returns 'DN' when 15 cents remain" do
    expect(convert(15)).to eq 'DN'
  end

  it "returns 'DDPPPP' when 24 cents remain" do
    expect(convert(24)).to eq 'DDPPPP'
  end

  it "returns 'Q' when 25 cents remain" do
    expect(convert(25)).to eq 'Q'
  end

  it "returns 'QQQQQDPP' when 137 cents remain" do
      expect(convert(137)).to eq 'QQQQQDPP'
  end

end
