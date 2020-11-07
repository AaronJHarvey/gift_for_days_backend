class Api::V1::PeopleController < ApplicationController
  def index
    people = Person.all
    render json: people, except: [:created_at, :updated_at]
  end
end
