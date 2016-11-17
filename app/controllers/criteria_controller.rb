class CriteriaController < ApplicationController
  def index
    @criteria = Criterium.all

    render("criteria/index.html.erb")
  end

  def show
    @response = Response.new
    @criterium = Criterium.find(params[:id])

    render("criteria/show.html.erb")
  end

  def new
    @criterium = Criterium.new

    render("criteria/new.html.erb")
  end

  def create
    @criterium = Criterium.new

    @criterium.weight = params[:weight]
    @criterium.decision_id = params[:decision_id]
    @criterium.name = params[:name]
    @criterium.user_id = params[:user_id]

    save_status = @criterium.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/criteria/new", "/create_criterium"
        redirect_to("/criteria")
      else
        redirect_back(:fallback_location => "/", :notice => "Criterium created successfully.")
      end
    else
      render("criteria/new.html.erb")
    end
  end

  def edit
    @criterium = Criterium.find(params[:id])

    render("criteria/edit.html.erb")
  end

  def update
    @criterium = Criterium.find(params[:id])

    @criterium.weight = params[:weight]
    @criterium.decision_id = params[:decision_id]
    @criterium.name = params[:name]
    @criterium.user_id = params[:user_id]

    save_status = @criterium.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/criteria/#{@criterium.id}/edit", "/update_criterium"
        redirect_to("/criteria/#{@criterium.id}", :notice => "Criterium updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Criterium updated successfully.")
      end
    else
      render("criteria/edit.html.erb")
    end
  end

  def destroy
    @criterium = Criterium.find(params[:id])

    @criterium.destroy

    if URI(request.referer).path == "/criteria/#{@criterium.id}"
      redirect_to("/", :notice => "Criterium deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Criterium deleted.")
    end
  end
end
