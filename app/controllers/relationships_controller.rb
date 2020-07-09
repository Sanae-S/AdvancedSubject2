class RelationshipsController < ApplicationController

	def create
	  @user = User.find(params[:user_id])
	  relationship = @user.relationships.new(user_id: current_user.id)
	  relationship.save
	  redirect_to request.referer
	end

	def destroy
	  @user = User.find(params[:user_id])
	  @relationship =Relationship.find(params[relationship_id])
	  relationship = @user.relationships.find_by(user_id: current_user.id)
	  relationship.destroy
	  redirect_to request.referer
	end

end
