require 'features_helper'

RSpec.describe 'List books' do
  let(:repository) { BookRepository.new }
  before do
    repository.clear

    repository.create(title: 'テステス', author: 'テス太郎')
    repository.create(title: 'テステス2',   author: 'テス二郎')
  end

  it 'displays each book on the page' do
    visit '/books'

    within '#books' do
      expect(page).to have_selector('.book', count: 2), 'Expected to find 2 books'
    end

    expect(page).to have_content "テステス"
    expect(page).to have_content "テステス2"
  end
end
