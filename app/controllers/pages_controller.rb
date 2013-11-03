class PagesController < ApplicationController
  def home
  end

  def writing
  end

  def cv
  end

  def download_cv
    filename = 'public/cv.pdf'
    send_file  'public/cv.pdf',
               :filename => 'mr_robin_smith_cv.pdf',
               :type => 'pdf',
               :disposition => 'attachment'
    flash[:notice] = "Your file has been downloaded"
  end
end
