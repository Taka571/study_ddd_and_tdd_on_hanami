RSpec.describe Book do
  it 'can be initialized with attributes' do
    book = Book.new(title: 'リーダブルコード')
    expect(book.title).to eq('リーダブルコード')
  end
end
