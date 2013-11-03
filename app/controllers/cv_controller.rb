class CvController < ApplicationController
  def home
  end

  def download
    send_file  'public/cv.pdf',
               :filename => 'mr_robin_smith_cv.pdf',
               :type => 'pdf',
               :disposition => 'attachment'
    flash[:notice] = "Your file has been downloaded"
  end
end
