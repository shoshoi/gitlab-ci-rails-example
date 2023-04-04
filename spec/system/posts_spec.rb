require 'rails_helper'

RSpec.describe "Posts", type: :system do

  describe 'トップページの検証' do
    it 'Home#top という文字列が表示される' do
      visit 'posts'
      page.save_screenshot
      expect(page).to have_content('New Post')
    end
  end
end
