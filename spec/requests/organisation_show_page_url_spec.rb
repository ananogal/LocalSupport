require 'rails_helper'

describe 'Organisation show page url' do
	
	before do
    FactoryGirl.factories.clear
    FactoryGirl.find_definitions

    @org1 = FactoryGirl.build(:organisation, :email => "", :name => 'Friendly', :description => 'Bereavement Counselling', :address => '64 pinner road', :postcode => 'HA1 3TE', :donation_info => 'www.harrow-bereavment.co.uk/donate')
    @org1.save!
  end

	it 'should display the organization name in the url' do
		get('/organisations/' + @org1.id.to_s)
		expect(organisation_path).to include 'Friendly'
	end
end