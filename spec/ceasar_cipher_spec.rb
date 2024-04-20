# frozen_string_literal: true

require './lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'input is an empty string' do
    expect(caesar_cipher('', 10)).to eql('')
  end

  it 'given a single character that is not an alphabet letter' do
    expect(caesar_cipher('!', 11)).to eql('!')
  end

  it 'given a single alphabet letter' do
    expect(caesar_cipher('C', 2)).to eql('A')
  end

  it 'when given a phrase' do
    expect(caesar_cipher('What a string!', 5)).to eql('Rcvo v nomdib!')
  end
end
