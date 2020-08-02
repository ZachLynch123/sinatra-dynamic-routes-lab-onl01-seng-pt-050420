describe App do
  describe 'GET /reversename/:name' do
    it 'sends a 200 status code' do
      get '/reversename/victoria'

      expect(last_response.status).to eq(200)
    end

    it 'renders the name backwards' do
      get '/reversename/victoria'

      expect(last_response.body).to include('airotciv')
    end

    it "isn't hard-coded" do
      get '/reversename/joseph'

      expect(last_response.body).to include('hpesoj')
      expect(last_response.body).to_not include('airotciv')
    end
  end

  
end