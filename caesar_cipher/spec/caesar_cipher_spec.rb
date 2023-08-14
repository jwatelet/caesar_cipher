require './lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'transform the string into an non understanable one' do
    result = caesar_cipher('What a string!', 5)

    expect(result).to eql('Bmfy f xywnsl!')
  end
end
