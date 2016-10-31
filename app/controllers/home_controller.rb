class HomeController < ApplicationController
	layout 'landing_page_layout'

	layout :resolve_layout

	def index
		#if params[:page] == 'store'
	  #  @page = Page.find_by_title(params[:page])
	  #  render 'home/store'
		#end
	end

	def admin_dashboard

	end	

	def show

		if params[:page] == 'store'
	    @page = Page.find_by_title(params[:page])
	    render 'home/store'
		end	
	end	

	def store
		@page = Page.find_by_title(params[:action])
	end

	def tour
		@page = Page.find_by_title(params[:action])
	end	

	def fanwall
		@page = Page.find_by_title(params[:action])
	end	

	def latest_news
		@news = News.all
	end	

  private

  def resolve_layout
    case action_name
    when "index"
      "landing_page_layout"
    when "show"
      "application"
    #else
    #  "application"
    end
  end	

end
