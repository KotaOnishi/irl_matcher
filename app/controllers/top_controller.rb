class TopController < ApplicationController

def index
  @workers = User.where(status: 1)
  @students = User.where(status: 0)
end

# def request
# end



end
