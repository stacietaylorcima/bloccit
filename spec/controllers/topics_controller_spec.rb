require 'rails_helper'

RSpec.describe TopicsController, type: :controller do
  let(:my_topic) do
    Topic.create!(
      name: RandomData.random_sentence,
      description: RandomData.random_paragraph
    )
  end 

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns my_topic to @topics" do
      get :index
      expect(assigns(:topics)).to eq([my_topic])
    end
  end
end
