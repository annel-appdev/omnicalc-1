class ApplicationController < ActionController::Base
  def blank_square_form
    render ({ :template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square
  # params = {"elephant"=>"38"}
    @num = params.fetch("elephant").to_f
    @square_of_num = @num ** 2
 
    render ({ :template => "calculation_templates/square_results.html.erb"})
  end

  def blank_random_form
    render ({ :template => "calculation_templates/random_new.html.erb"})
  end

  def calculate_random
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper)

    render ({ :template => "calculation_templates/random_results.html.erb"})
  end

  def blank_square_root_form
    render ({ :template => "calculation_templates/square_root.html.erb"})
  end

  def calculate_square_root
    @number = params.fetch("user_number")
    @square_root = @number.to_f ** 0.5
    
    render ({ :template => "calculation_templates/square_root_results.html.erb"})
  end

  def blank_payment_form
  render ({ :template => "calculation_templates/payment_form.html.erb"})
  end

def calculate_payment
  @apr = params.fetch("user_apr")
  @years = params.fetch("user_years") * 12
  @principal = params.fetch("user_principal")

  render ({ :template => "calculation_templates/payment_results.html.erb"})
end

end
