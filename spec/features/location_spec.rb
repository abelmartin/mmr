require 'spec_helper'

describe 'location interactions' do
  let(:ryu){ FactoryGirl.create :user }
  it 'shows index for signed in users' do
    visit new_user_session_path
    #visit '/'
    page.should have_content('Abel Martin')
  end
end
