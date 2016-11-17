class OptionsController < ApplicationController
  def index
    @options = Option.page(params[:page]).per(10)

    render("options/index.html.erb")
  end

  def show
    @response = Response.new
    @option = Option.find(params[:id])

    render("options/show.html.erb")
  end

  def new
    @option = Option.new

    render("options/new.html.erb")
  end

  def create
    @option = Option.new

    @option.name = params[:name]
    @option.descriptions = params[:descriptions]
    @option.decision_id = params[:decision_id]

    save_status = @option.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/options/new", "/create_option"
        redirect_to("/options")
      else
        redirect_back(:fallback_location => "/", :notice => "Option created successfully.")
      end
    else
      render("options/new.html.erb")
    end
  end

  def edit
    @option = Option.find(params[:id])

    render("options/edit.html.erb")
  end

  def update
    @option = Option.find(params[:id])

    @option.name = params[:name]
    @option.descriptions = params[:descriptions]
    @option.decision_id = params[:decision_id]

    save_status = @option.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/options/#{@option.id}/edit", "/update_option"
        redirect_to("/options/#{@option.id}", :notice => "Option updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Option updated successfully.")
      end
    else
      render("options/edit.html.erb")
    end
  end

  def destroy
    @option = Option.find(params[:id])

    @option.destroy

    if URI(request.referer).path == "/options/#{@option.id}"
      redirect_to("/", :notice => "Option deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Option deleted.")
    end
  end
end
