class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :update, :destroy]

  # GET /people
  def index
    @people = current_user.people

    render json: PersonSerializer.new(@people).serializable_hash[:data].map{|hash| hash[:attributes]}
  end

  # GET /people/1
  def show
    render json: PersonSerializer.new(@person).serializable_hash[:data][:attributes]
  end

  # POST /people
  def create
    @person = current_user.people.build(person_params)
    
    if @person.save
      render json: PersonSerializer.new(@person).serializable_hash[:data][:attributes], status: :created, location: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /people/1
  def update
    if @person.update(person_params)
      render json: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # DELETE /people/1
  def destroy
    @person.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def person_params
      params.require(:person).permit(:first_name, :last_name, :relationship, :birthday, :street_address, :avatar_url, :city, :state, :email_address, :postal_code)
    end
end
