# ArabicWordify/spec/ArabicWordify_spec.rb
require 'spec_helper'
require 'Arabic-Wordify'

RSpec.describe ArabicWordify do
  it 'converts numbers to words' do
    expect(ArabicWordify.convert(1880)).to eq('واحد ألف و ثمانمائة و ثمانون')
    expect(ArabicWordify.convert(113)).to eq('مائة و ثلاثة عشر')
    expect(ArabicWordify.convert(4421)).to eq('أربعة ألف و أربعمائة و واحد و عشرون')
  end

  it 'raises error for nil input' do
    expect { ArabicWordify.convert(nil) }.to raise_error(ArabicWordify::ArabicWordifyError)
  end

  it 'raises error for non-integer input' do
    expect { ArabicWordify.convert('test') }.to raise_error(ArabicWordify::ArabicWordifyError)
  end
end
