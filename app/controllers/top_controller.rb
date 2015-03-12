class TopController < ApplicationController
  class Shuffle
    include ActiveModel::Model
    attr_accessor :member_count
  
    validates :member_count, :presence => true, numericality: true
  end

  def index
    @shuffle = Shuffle.new(params[:top_controller_shuffle])

    if request.post?
      a = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      shuffle_params = params.require(:top_controller_shuffle).permit(:member_count)

      @users = User.all.where('rand()').limit(shuffle_params[:member_count])
    else
    end
  end
end
