class CalculationsController <ApplicationController

  def flex_square_5
    @user_number = params["num"].to_f
    @square = @user_number**2
    render("/calculations/flex_square_5.html.erb")
  end

  def flex_squareroot
    @user_number = params[:num].to_f
    @squareroot = @user_number** 0.5
    render("/calculations/flex_square_root.html.erb")
  end

  def flex_random
    @min = params[:min].to_i
    @max = params[:max].to_i
    @random = (@min..@max).to_a.sample
    render("/calculations/flex_random.html.erb")
  end

  def flex_payment
    @rate = params[:rate].to_f
    @year = params[:year].to_i
    @principal = params[:principal].to_f

    @annual_r = @rate / 100.0
    monthly_r = @annual_r / 12.0 / 100.00
    terms = @year * 12
    numerator = monthly_r * (@principal)
    denominator = 1 - ((1+monthly_r)**-terms)


  @monthly_payment = numerator / denominator

    render("/calculations/flex_payment.html.erb")
  end

  def square_form
    render("/calculations/square_form.html.erb")
  end

  def square
    @user_number = params[:user_number].to_f
    @square = @user_number** 2
    render("/calculations/square.html.erb")
  end

  def square_root_form
    render("/calculations/square_root_form.html.erb")
  end

  def square_root
    @user_number = params[:user_number].to_f
    @square = @user_number** 0.5
    render("/calculations/square_root.html.erb")
  end

  def random_form
    render("/calculations/random_form.html.erb")
  end

  def random
    @min = params[:min].to_i
    @max = params[:max].to_i
    @random = (@min..@max).to_a.sample
    render("/calculations/random.html.erb")
  end

  def payment_form
    render("/calculations/payment_form.html.erb")
  end

  def payment
    @rate = params[:rate].to_f
    @year = params[:year].to_i
    @principal = params[:principal].to_f

    monthly_r = @rate / 12.0 / 100.0
    terms = @year * 12
    numerator = monthly_r * (@principal)
    denominator = 1 - ((1+monthly_r)**-terms)


  @monthly_payment = numerator / denominator
    render("/calculations/payment.html.erb")
  end
end
