require 'rails_helper'

RSpec.describe 'Articles API', type: :request do

    #Initialize Test Data
    let!(:articles) { FactoryBot.create_list(:article, 5)}
    let!(:article_id) { articles.first.id }

    describe 'GET /api/v1/articles' do 

        before { get '/api/v1/articles'}

        it 'returns status code of 200' do
            expect(response).to have_http_status(200)
        end

        it 'returns collection of articles in JSON' do
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

            before { post '/api/v1/articles', params: {
                article: {
                    title: '',
                    author: '',
                    description: '',
                    url: ''
                }
            }}

            it 'retuns a status of 422' do 
                expect(response).to have_http_status(422)
            end

            it 'returns validation error messages in JSON' do
                expect(json).not_to be_empty
                expect(json[:errors][:messages]).to eq({
                    :title=>["can't be blank"],
                    :description=>["can't be blank"],
                    :author=>["can't be blank"],
                    :url=>["can't be blank"]
                })
            end
        end
    end

    describe 'GET /api/v1/articles/:id' do 
        context 'if article exists' do
            before { get "/api/v1/articles/#{article_id}"}

            it 'returns status code of 200' do
                expect(response).to have_http_status(200)
            end

            it 'returns a particular article in JSON' do
                expect(json).not_to be_empty
                expect(json[:id]).to eq(article_id)
                expect(json[:title]).to eq(articles.first.title)
                expect(json[:author]).to eq(articles.first.author)
                expect(json[:description]).to eq(articles.first.description)
                expect(json[:url]).to eq(articles.first.url)
            end
        end

        context 'if article does not exist' do
            before { get "/api/v1/articles/10000000"}

            it 'returns status code of 404' do
                expect(response).to have_http_status(404)
            end

            it 'returns error message of not found in JSON' do
                expect(json).not_to be_empty
                expect(json[:errors][:message]).to eq({:article=>"can't be found."})
            end
        end
    end
end
