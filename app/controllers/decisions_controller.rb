class DecisionsController < ApplicationController
  def index
      @decisions = Decision.all.page(params[:page]).per(10)

    render("decisions/index.html.erb")
  end



  def show
    @option = Option.new
    @comment = Comment.new
    @criterium = Criterium.new
    @response = Response.all
    @decision = Decision.find(params[:id])


    render("decisions/show.html.erb")
  end

  def new
    @decision = Decision.new

    render("decisions/new.html.erb")
  end

  def create
    @decision = Decision.new

    @decision.user_id = params[:user_id]
    @decision.name = params[:name]
    @decision.description = params[:description]

    save_status = @decision.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/decisions/new", "/create_decision"
              redirect_to("/decisions/#{@decision.id}/edit", :notice => "Decision created successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Decision created successfully.")
      end
    else
      render("decisions/new.html.erb")
    end
  end

  def edit
    @decision = Decision.find(params[:id])

    render("decisions/edit.html.erb")
  end

  def update
    @decision = Decision.find(params[:id])

    @decision.user_id = params[:user_id]
    @decision.name = params[:name]
    @decision.description = params[:description]

    save_status = @decision.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/decisions/#{@decision.id}/edit", "/update_decision"
        redirect_to("/decisions/#{@decision.id}", :notice => "Decision updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Decision updated successfully.")
      end
    else
      render("decisions/edit.html.erb")
    end
  end

  def destroy
    @decision = Decision.find(params[:id])

    @decision.destroy

    if URI(request.referer).path == "/decisions/#{@decision.id}"
      redirect_to("/", :notice => "Decision deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Decision deleted.")
    end
  end
end
