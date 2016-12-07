#!/usr/bin/env rspec
require 'rspec'
require 'mechanize'

baseURI = 'http://www.torbor.ru'

RSpec.describe "General Availability test suite" do
	context "Ensure pages are available:" do
		mechAgent = Mechanize.new
		it "Main page" do
			response = mechAgent.get "#{baseURI}/"
			expect(response.code).to eq "200"
		end
		it "Catalog page" do
			response = mechAgent.get "#{baseURI}/catalog"
			expect(response.code).to eq "200"
		end
		it "Search page" do
			response = mechAgent.get "#{baseURI}/search"
			expect(response.code).to eq "200"
		end
		it "About page" do
			response = mechAgent.get "#{baseURI}/about"
			expect(response.code).to eq "200"
		end
		it "Contact page" do
			response = mechAgent.get "#{baseURI}/contact"
			expect(response.code).to eq "200"
		end
		it "Shipping page" do
			response = mechAgent.get "#{baseURI}/shipping"
			expect(response.code).to eq "200"
		end
		it "Sign up page" do
			response = mechAgent.get "#{baseURI}/signup"
			expect(response.code).to eq "200"
		end
		it "Request password reset page" do
			response = mechAgent.get "#{baseURI}/site/request-password-reset"
			expect(response.code).to eq "200"
		end
	end
end
