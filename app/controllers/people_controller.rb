class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy, :checked]

  def checked
    respond_to do |format|
      format.js do
        @person.checked = !@person.checked
        @person.save
      end
    end
  end

  def statistics
    @info = Person.year_statistics()
  end

  # GET /people
  # GET /people.json
  def index
    if params.has_key?('name')
      @people = Person.includes(
        contracts: :post).where("last_name ilike ?", '%' + params['name'].to_s + '%').all
    else
      @people = Person.includes(contracts: :post).all
    end
  end

  # GET /people/1
  # GET /people/1.json
  def show
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Person was successfully created.' }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'Person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:last_name, :first_name, :second_name, 
	:birthday, :sex,
	addresses_attributes: [:id, :person_id, :index, :region, 
		:district, :city, :settlement, :street, :house, :building, 
		:construction, :flat, :atype, :_destroy])
    end
end
