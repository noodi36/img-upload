class HomeController < ApplicationController
  def index
  end
  
  def upload
    file = params[:pic]
    uploader = ImgcontainerUploader.new
    uploader.store!(file)
    
    flash[:notice]  = "업로드 완료"
    redirect_to "/home/index"
  end
end
