class CommentsController < ApplicationController
  def index
    @comments = Comment.all

    render("comments/index.html.erb")
  end

  def show
    @comment = Comment.find(params[:id])

    render("comments/show.html.erb")
  end

  def new
    @comment = Comment.new

    render("comments/new.html.erb")
  end

  def create
    @comment = Comment.new

    @comment.decision_id = params[:decision_id]
    @comment.message = params[:message]
    @comment.user_id = params[:user_id]

    save_status = @comment.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/comments/new", "/create_comment"
        redirect_to("/comments")
      else
        redirect_back(:fallback_location => "/", :notice => "Comment created successfully.")
      end
    else
      render("comments/new.html.erb")
    end
  end

  def edit
    @comment = Comment.find(params[:id])

    render("comments/edit.html.erb")
  end

  def update
    @comment = Comment.find(params[:id])

    @comment.decision_id = params[:decision_id]
    @comment.message = params[:message]
    @comment.user_id = params[:user_id]

    save_status = @comment.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/comments/#{@comment.id}/edit", "/update_comment"
        redirect_to("/comments/#{@comment.id}", :notice => "Comment updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Comment updated successfully.")
      end
    else
      render("comments/edit.html.erb")
    end
  end

  def destroy
    @comment = Comment.find(params[:id])

    @comment.destroy

    if URI(request.referer).path == "/comments/#{@comment.id}"
      redirect_to("/", :notice => "Comment deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Comment deleted.")
    end
  end
end
