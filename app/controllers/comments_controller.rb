class CommentsController < ApplicationController

    def create
        @book = Book.find(params[:book_id])
        comment = current_user.comments.new(comment_params)
        comment.book_id = @book.id
        comment.save
        @comment = Book.find(params[:book_id]).comments
    end

    def destroy
        Comment.find_by(id: params[:id], book_id: params[:book_id]).destroy
        @comment = Book.find(params[:book_id]).comments
    end

    private

    def comment_params
        params.require(:comment).permit(:comment)
    end

end
