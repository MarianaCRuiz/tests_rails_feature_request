describe 'HTTParty' do
  it 'content-type', vcr: { cassette_name: 'HTTParty/content-type' } do
    response = HTTParty.get('https://jsonplaceholder.typicode.com/posts/2')
    content_type = response.headers['content-type']
    expect(content_type).to match(/application\/json/)
    #end
  end
end