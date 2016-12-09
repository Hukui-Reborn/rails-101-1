class WelcomeController < ApplicationController
def index
  flash[:warning] = "这是warning 讯息！"
end
end
