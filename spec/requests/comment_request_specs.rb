require 'rails_helper'

RSpec.describe 'Comments API', type: :request do

    #Initialize Test Data
    let!(:article) { FactoryBot.create(:article)}
    let!(:article_id) { article.id }
    let!(:comments) { FactoryBot.create_list(:comment, 5, article_id: article.id)}
    let!(:comment_id) { comments.first.id}

    describe 'GET /api/v1/articles/:article_id/comments' do 
        context 'if article exists' do

            before {get "/api/v1/articles/#{article_id}/comments"}
            
            it 'returns status code of 200' do
                expect(response).to have_http_status(200)
            end

            it "returns all of the article's comments in JSON" do
                expect(json.size).to eq(5)
                expect(json[0][:id]).not_to eq(nil)
            end
        end

    
        context 'if article does not exist' do
            before { get "/api/v1/articles/1000000/comments"}

            it 'returns status code of 404' do
                expect(response).to have_http_status(404)
            end

            it 'returns error message of not found in JSON' do
                expect(json).not_to be_empty
                expect(json[:errors][:message]).to eq({:article=>"can't be found."})
            end
        end
    end

    describe 'POST /api/v1/articles/:article_id/comments' do
        describe 'if article exists' do
            context 'if attributes are valid' do

                let(:valid_attributes) {
                    {
                        comment: {
                            content: Faker::HowIMetYourMother.catch_phrase,
                            review: Faker::Boolean.boolean
                        }
                    }
                }

                before {post "/api/v1/articles/#{article_id}/comments", params: valid_attributes}
                
                it 'returns status code of 201' do
                    expect(response).to have_http_status(201)
                end

                it "returns all of the article's comments in JSON" do
                    expect(json).not_to be_empty
                    expect(json[:id]).not_to eq(nil)
                    expect(json[:content]).not_to eq(nil)
                end
            end

            context 'if attributes are invalid' do

                let(:invalid_attributes) {
                    {
                        comment: {
                            content: '',
                            review: Faker::Boolean.boolean
                        }
                    }
                }

                before {post "/api/v1/articles/#{article_id}/comments", params: invalid_attributes}

                it 'returns status code of 422' do
                    expect(response).to have_http_status(422)
                end

                it 'returns validation error messages in JSON' do
                    expect(json).not_to be_empty
                    expect(json[:errors][:messages]).to eq({
                        :content=>["can't be blank"],
                    })
                end
            end
        end

    
        context 'if article does not exist' do
            before { post "/api/v1/articles/1000000/comments"}

            it 'returns status code of 404' do
                expect(response).to have_http_status(404)
            end

            it 'returns error message of not found in JSON' do
                expect(json).not_to be_empty
                expect(json[:errors][:message]).to eq({:article=>"can't be found."})
            end
        end

    end


    # describe 'delete'

    describe 'DELETE /api/v1/articles/:article_id/comments/:comment_id' do
        context 'if article exists' do

            context 'and comment exists' do

                before { delete "/api/v1/articles/#{article_id}/comments/#{comment_id}"}

                it 'returns status code of 204' do
                    expect(response).to have_http_status(204)
                end

                it 'deletes article' do

                end
            end

            context "and comment doesn't exist" do

                before { delete "/api/v1/articles/#{article_id}/comments/100000"}
                
                it 'returns status code of 404' do
                    expect(response).to have_http_status(404)
                end

                it 'returns error message of not found in JSON' do
                    expect(json).not_to be_empty
                    expect(json[:errors][:message]).to eq({:comment=>"can't be found."})
                end
            end
        end

        context "if article doesn't exist" do

            before { post "/api/v1/articles/1000000/comments"}

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
