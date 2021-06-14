feature 'Viewing bookmarks' do
  scenario 'to view a list of my bookmarks' do
    visit '/'
    expect(page).to have_content 'Bookmark manager'
  end

  scenario 'A user can see bookmarks' do
    visit('/')
    click_button 'submit'
    expect(page).to have_content 'Bookmark manager'
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
