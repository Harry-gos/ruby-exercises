require 'spec_helper'
require_relative '../impl/main'

RSpec.describe 'Project: Ceasar Cipher' do
	describe 'shift string with shift factor 5' do
		it 'returns a string shifted to right 5 times' do
			expected_output ="Bmfy f xywnsl!"
			expect(caesar_cipher("What a string!", 5)).to eq(expected_output)
		end
	end
end