  class UsersController < ApplicationController
    def mypage
      @user = User.find(params[:id])
      @matching = Matching.new
    end

    # def request
    # end
  end