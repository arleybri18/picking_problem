require '../lib/article'
require 'json'

RSpec.describe Article do
  let (:json_file_1) {File.read(File.join('spec', 'files', 'case_1.json'))}
  let (:json_file_2) {File.read(File.join('spec', 'files', 'case_2.json'))}
  let (:json_file_3) {File.read(File.join('spec', 'files', 'case_3.json'))}
  let (:json_file_4) {File.read(File.join('spec', 'files', 'case_4.json'))}

  it "should return result Scenario 1" do
    data = JSON.parse(json_file_1)
    recommendations = Article.new(data).recommendations

    expect(recommendations).to eq([345048])
  end

  it "should return result Scenario 2" do
    data = JSON.parse(json_file_2)
    recommendations = Article.new(data).recommendations

    expect(recommendations).to eq([790952, 103678, 788138, 802358])
  end

  it "should return result Scenario 3" do
    data = JSON.parse(json_file_3)
    recommendations = Article.new(data).recommendations

    expect(recommendations).to eq([103678, 790952, 802358, 788138])
  end

  it "should return result Scenario 4" do
    data = JSON.parse(json_file_4)
    recommendations = Article.new(data).recommendations

    expect(recommendations).to eq([790952, 103678, 802358, 562873])
  end
end
