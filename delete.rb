require "httparty"

class TestAPI
  include HTTParty
  base_uri 'http://localhost:5000/'
end

RSpec.describe 'Usando Verbo DELETE ' do

    it 'Deletar um contato com sucesso', :delete1 => true  do
        begin
            response = TestAPI.delete('/contacts/5c479003ec699755522ac342'); 
            expect(response.code).to eql(204)
        end
    end
        
    it 'Deletar um contato inexistente', :delete2 => true  do
        begin
            response = TestAPI.delete('/contacts/5c479003ec699755522ac342');
            expect(response.code).to eql(404)
        end
    end
end
