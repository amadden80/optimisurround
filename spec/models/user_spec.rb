require 'spec_helper'

describe User do
  subject(:user) {build(:user)}

  describe 'validation' do
    it 'requires a email' do
      expect(user).to be_valid
      user.email = nil
      expect(user).to be_invalid
    end
  end

  describe 'associations' do

    context 'has filters' do
      let(:filter){ build(:filter) }
      let(:filter2){ build(:filter2) }
      it 'knows owning songs' do
        expect(subject).to respond_to(:filters)
      end
      it 'can have one filter' do
        lambda {
          user.filters << filter
        }.should change{user.filters.size}.by(1)
        user.filters.should eq [filter]
      end
      it 'can have more than one filter' do
        lambda {
          user.filters << filter
          user.filters << filter2
        }.should change{user.filters.size}.by(2)
      end
    end
  end
end

