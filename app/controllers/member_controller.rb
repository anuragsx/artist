class MemberController < ApplicationController

	layout 'member_layout'

	before_action :authenticate_user!

	def index

	end	
end
