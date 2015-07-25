class GuessesController < ApplicationController
  before_action :set_guess, only: [:show, :edit, :update, :destroy]

  # GET /guesses
  # GET /guesses.json
  def index
    @guesses = Guess.all
  end

  # GET /guesses/1
  # GET /guesses/1.json
  def show
  end

  # GET /guesses/new
  def new
     @guess = Guess.new
  end

  # GET /guesses/1/edit
  def edit
  end

  # POST /guesses
  # POST /guesses.json
  def create
    # create a guess based on sample data
    height = params[:height].to_i
    weight = params[:weight].to_i

    @guess = Guess.where(:height => height).first

    if weight < @guess.weight_male_min
        # Less than male min wieght: female dominant scale
        session[:scale] = "female"
        base_scale = @guess.scale_female_dominant.to_f / (@guess.scale_female_dominant + @guess.scale_male_nondominant)
        @gender = guess_gender(base_scale)
    elsif @guess.weight_male_min <= weight && weight <= @guess.weight_female_max
        # between male min and female max: 50% chance of either gender
        session[:scale] = "even"
        base_scale = @guess.scale_male_even.to_f / (@guess.scale_male_even + @guess.scale_female_even)
        @gender = guess_gender(base_scale)
    else
        # more than female max wieght: male dominate scale
        session[:scale] = "male"
        base_scale = @guess.scale_female_nondominant.to_f / (@guess.scale_female_nondominant + @guess.scale_male_dominant)
        @gender = guess_gender(base_scale)
    end

    respond_to do |format|
        format.html { redirect_to @guess, notice: "#{@gender}"  }
    end
  end

  # PATCH/PUT /guesses/1
  # PATCH/PUT /guesses/1.json
  def update
    @guess = Guess.where("id = ?", params[:id]).first

    # if weight falls in the even range, ie greater than male_min and lower
    # than female_max, model does not get updated because the change will
    # always be 50/50 even with new inputs
    if params[:scale] == "female"
        if params[:guess] == "right"
            @guess.scale_female_dominant += 1
        elsif params[:guess] == "wrong"
            @guess.scale_male_nondominant += 1
        end
    elsif params[:scale] == "male"
        if params[:guess] == "right"
            @guess.scale_male_dominant += 1
        elsif params[:guess] == "wrong"
            @guess.scale_female_nondominant += 1
            puts "======== #{@guess.scale_female_nondominant}"
        end
    end

    @guess.save

    redirect_to root_path
  end

  # DELETE /guesses/1
  # DELETE /guesses/1.json
  def destroy
    @guess.destroy
    respond_to do |format|
      format.html { redirect_to guesses_url, notice: 'Guess was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Custome astions

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guess
      @guess = Guess.find(params[:id])
    end


    def guess_gender(base_scale)
        if rand(0..9)/10.0 < base_scale
            gender = "female"
        else
            gender = "male"
        end

        return gender
    end
end
