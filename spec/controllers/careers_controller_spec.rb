# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Api::V1::CareersController do
  render_views

  describe 'Careers' do
    describe 'GET careers#index' do
      it 'should render careers#index template' do
        get :index

        expect(response).to have_http_status(:success)
        expect(response).to render_template(:index)
      end
    end

    describe 'POST careers#create' do
      let(:career_attributes) { attributes_for(:career) }

      it 'should create a new career' do
        post :create, params: { career: career_attributes }

        expect(response).to have_http_status(:success)
        expect(response).to render_template(:show)
      end
    end

    describe 'GET careers#show' do
      let(:career) { create(:career) }

      it 'should render careers#show template' do
        get :show, params: { id: career.id }

        expect(response).to have_http_status(:success)
        expect(response).to render_template(:show)
      end
    end

    describe 'PUT careers#update' do
      let(:career) { create(:career) }
      let(:career_attributes) { attributes_for(:career) }

      it 'should update an existing career' do
        patch :update, params: { id: career.id, career: career_attributes }

        expect(response).to have_http_status(:success)
        expect(response).to render_template(:show)
      end
    end

    describe 'DELETE careers#destroy' do
      let(:career) { create(:career) }

      it 'should delete a career' do
        delete :destroy, params: { id: career.id }

        expect(response).to redirect_to(action: :index)
      end
    end
  end
end
