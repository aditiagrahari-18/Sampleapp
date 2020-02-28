class ApplicationController < ActionController::Base
    def sampleapp
        render html: "hello, world!Today I am developing sample app."
    end
    def found
      respond_to do |format|
        format.html { render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found }
        format.xml  { head :not_found }
        format.any  { head :not_found }
      end
    end
end
