require_relative '../prime_factors'

describe 'prime_factors' do
  it "returns prime when a prime number" do
    expect(prime_factors(2)).to eq 2
  end

  it "returns an array when factored out" do
    expect(prime_factors(4)).to eq [2, 2]
  end

  it "returns an array when factored out" do
    expect(prime_factors(8)).to eq [2, 2, 2]
  end

  it "returns an array when factored out" do
    expect(prime_factors(873)).to eq [3, 3, 97]
  end

  it "returns an array when factored out" do
    expect(prime_factors(123123123)).to eq [3, 3, 41, 333667]
  end
end
