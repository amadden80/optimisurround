require 'spec_helper'

describe Filter do
  subject(:filter) {build(:filter)}

  describe 'validation' do
    it 'requires a elevation' do
      expect(filter).to be_valid
      filter.elevation = nil
      expect(filter).to be_invalid
    end
    it 'requires a azimuth' do
      expect(filter).to be_valid
      filter.azimuth = nil
      expect(filter).to be_invalid
    end
    it 'requires a ear' do
      expect(filter).to be_valid
      filter.ear = nil
      expect(filter).to be_invalid
    end
  end

end
