class UsersController < ApplicationController

    before_action :find_user, only: [:show, :update, :destroy]
    skip_before_action :authorized, only: [:create]

    def index
        users = User.all
        render json: UserSerializer.new(users)
    end

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def show
        render json: UserSerializer.new(@user)
    end

    def new
        user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def update
        User.update(user_params)
        render json: UserSerializer.new(@user)

    end

    def destroy
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :bio, :id)
    end
end
