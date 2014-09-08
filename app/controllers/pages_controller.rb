class PagesController < ApplicationController
  def cv
  end

  def download_cv
    send_file  'public/cv.pdf',
               :filename => 'mr_robin_smith_cv.pdf',
               :type => 'pdf',
               :disposition => 'attachment'
    flash[:notice] = "Your file has been downloaded"
  end
end