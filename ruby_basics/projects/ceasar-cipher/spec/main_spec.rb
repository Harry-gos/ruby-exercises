require 'spec_helper'
require_relative '../impl/main'

RSpec.describe 'Project: Ceasar Cipher' do
	describe 'shift string with positive factor shift factors' do
		it 'returns a string shifted to right 5 times' do
			expected_output ="Bmfy f xywnsl!"
			expect(caesar_cipher("What a string!", 5)).to eq(expected_output)
		end
	end

	describe 'shift string with negative shift factors' do
		it 'returns a string shifted to left 1 times' do
			expected_output ="Vgzs z rsqhmf!"
			expect(caesar_cipher("What a string!", -1)).to eq(expected_output)
		end
	end

	describe 'shift string with shift factor 0' do
		it 'returns the same string' do
			expected_output ="What a string!"
			expect(caesar_cipher("What a string!", 0)).to eq(expected_output)
		end
	end
end