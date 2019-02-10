require 'rails_helper'

RSpec.describe 'Articles API', type: :request do

    #Initialize Test Data
    let!(:articles) { FactoryBot.create_list(:article, 5)}

    describe 'GET /api/v1/articles' do 

        before { get '/api/v1/articles'}

        it 'returns status code of 200' do
            expect(response).to have_http_status(200)
        end

        it 'returns collection of articles in JSON' do
            json = JSON.parse(response.body)
            expect(json).not_to be_empty
            expect(json.size).to eq(5)
        end
    end

    describe 'POST /api/v1/articles' do
        context 'when request is valid' do
            let(:valid_attributes) {
                {
                    article: {
                        title: Faker::TheITCrowd.quote,
                        author: Faker::ParksAndRec.character,
                        description: Faker::Lovecraft.paragraph(1),
                        url: Faker::Internet.url
                    }
                }
            }

            before { post '/api/v1/articles', params: valid_attributes}

            it 'returns status code of 201' do
                expect(response).to have_http_status(201)
            end

            it 'creates an article and returns article as JSON' do
                json = JSON.parse(response.body, symbolize_names: true)

                expect(json).not_to be_empty
                expect(json[:id]).not_to eq(nil)
                expect(json[:title]).to eq(valid_attributes[:article][:title])
                expect(json[:author]).to eq(valid_attributes[:article][:author])
                expect(json[:desription]).to eq(valid_attributes[:article][:desription])
                expect(json[:url]).to eq(valid_attributes[:article][:url])
            end
        end
        
        context 'when request is invalid' do
        end
    end



end
