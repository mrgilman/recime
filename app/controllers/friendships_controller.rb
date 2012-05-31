class FriendshipsController < ApplicationController

  def create
    @friendship = current_user.friendships.create(friend_id: params[:id])
    if @friendship.save
      redirect_to user_path(User.find(@friendship.friend_id))
    end
  end
end
