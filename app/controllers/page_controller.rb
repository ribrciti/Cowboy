class PageController < ApplicationController
  
  def home
  end

  def about_us
  end

  def contact_us
    @submitted = params["commit"]
    @form_error = false
    @name = params["name"]
    if @name ==""
      flash["error"] = "Must enter your name!"
      @form_error = true
    end
    @email = params["email"]
    @question = params["question"]
    @newsletter = params["newsletter"] == "newsletter"
    gender = params["gender"]
    @male = gender == "Male" #true or false
    @female = gender == "Female" #also true or false
    @product = params["product"]
  end

  def products
  end

  def newsletter  	
  end

  def articles
  end

  def blog
  end

  def calendar

    @time = Time.now
    @month = params['month'].to_i
    @year = params['year'].to_i
    if (@month <= 1 || @month >12)
      @month = @time.strftime( "%m" ).to_i
    end
    if (@year <= 0)
      @year = @time.strftime( "%Y" ).to_i
    end

  end

  def login
  end

end
