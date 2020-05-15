# frozen_string_literal: true

require './number_type'

RSpec.describe NumberType do
  context '.odd?' do
    it 'returns true for 5' do
      expect(NumberType.odd?(5)).to eq(true)
    end

    it 'returns false for 2' do
      expect(NumberType.odd?(2)).to eq(false)
    end
  end

  context '.even?' do
    it 'returns true for 2' do
      expect(NumberType.even?(2)).to eq(true)
    end

    it 'returns false for 9' do
      expect(NumberType.even?(9)).to eq(false)
    end
  end
end
