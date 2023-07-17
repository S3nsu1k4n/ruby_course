#spec/ruby_caesar_cipher_spec.rb

require './lib/caesar_cipher'

describe 'caesar_cipher' do
  it 'returns the string from the example' do
    expect(caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
  end
  it 'not shift special character' do
    expect(caesar_cipher("oh! Those dogs! They're so big!!", 5)).to eql("tm! Ymtxj itlx! Ymjd'wj xt gnl!!")
  end
  it 'not shift numbers' do
    expect(caesar_cipher('I got 5 Red Flowers', 10)).to eql('S qyd 5 Bon Pvygobc')
  end
  it 'returns original' do
    expect(caesar_cipher('Nice weather', 0)).to eql('Nice weather')
  end
  it 'keep same case' do
    expect(caesar_cipher('I got Red FlowerS', 3)).to eql('L jrw Uhg IorzhuV')
  end
  it 'high shift number' do
    expect(caesar_cipher('Workbook', 929_348)).to eql('Asvofsso')
  end
  it 'negative numbers' do
    expect(caesar_cipher('Nice weather', -8)).to eql('Fauw owslzwj')
  end
end
