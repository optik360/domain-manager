require 'spec_helper'

describe CSVImporter do
  context 'When the domain does not exist' do
    it 'Import a CSV' do
      Domain.destroy_all
      Client.destroy_all

      CSVImporter.new("#{Rails.root}/spec/fixtures/domains.csv").call

      expect(Domain.count).to eq 2
      expect(Domain.first.name).to eq 'www.google.com'
    end
  end

  context 'When the domain exist' do
    it 'Import a CSV' do
      Domain.destroy_all
      Client.destroy_all

      domain = Domain.create(id: 15, name: 'test')
      CSVImporter.new("#{Rails.root}/spec/fixtures/domains.csv").call

      expect(Domain.first.name).to eq 'www.google.com'
    end
  end
end