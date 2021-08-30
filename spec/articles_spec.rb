# frozen_string_literal: true

require '../lib/article'
require 'json'

RSpec.describe Article do
  let(:json_file1) { File.read(File.join('spec', 'files', 'case_1.json')) }
  let(:json_file2) { File.read(File.join('spec', 'files', 'case_2.json')) }
  let(:json_file3) { File.read(File.join('spec', 'files', 'case_3.json')) }
  let(:json_file4) { File.read(File.join('spec', 'files', 'case_4.json')) }

  context 'test scenarios' do
    it 'should return result Scenario 1' do
      data = JSON.parse(json_file1)
      recommendations = Article.new(data).recommendations

      expect(recommendations).to eq([345_048])
    end

    it 'should return result Scenario 2' do
      data = JSON.parse(json_file2)
      recommendations = Article.new(data).recommendations

      expect(recommendations).to eq([790_952, 103_678, 788_138, 802_358])
    end

    it 'should return result Scenario 3' do
      data = JSON.parse(json_file3)
      recommendations = Article.new(data).recommendations

      expect(recommendations).to eq([103_678, 790_952, 802_358, 788_138])
    end

    it 'should return result Scenario 4' do
      data = JSON.parse(json_file4)
      recommendations = Article.new(data).recommendations

      expect(recommendations).to eq([790_952, 103_678, 802_358, 562_873])
    end

    it 'should return number recomendations sended' do
      data = JSON.parse(json_file3)
      recommendations = Article.new(data).recommendations(2)

      expect(recommendations).to eq([103_678, 790_952])
    end
  end

  context 'validate data format' do
    it 'allow json data with parsing and without parsing' do
      data = json_file4
      data_parse = JSON.parse(json_file4)

      article1 = Article.new(data)
      article2 = Article.new(data_parse)

      expect(article1.recommendations).to eq(article2.recommendations)
    end
  end

  context 'validate lenght of recommendations' do
    it 'should return a number of recommendations specified' do
      data = json_file4

      recommendations1 = Article.new(data).recommendations
      recommendations2 = Article.new(data).recommendations(2)

      expect(recommendations1.size).to eq(4)
      expect(recommendations2.size).to eq(2)
    end
  end
end
