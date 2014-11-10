class SessionsController < ApplicationController
skip_before_filter :authorize
    def new
    end

    def create
        admin = User.where({
    _id: "546046474a616310b7000000",
    email: "admin@admin.com",
    password_digest: "$2a$10$PN3pAMeLEMtavsyxsQ8iveiCnEQt/mjc3wqYHDwRivySv8SaQIela"
}).first
        user = User.where(email: params[:email]).first
        # first make sure we actually find a user
        # then see if user authenticates
        if user && user.authenticate(params[:password]) && user != admin
            # sets the cookie to the browser
            session[:user_id] = user.id
            redirect_to userprofiles_url, notice: "Logged in!"
        elsif admin && admin.authenticate(params[:password])
            session[:user_id] = user.id.to_s
            redirect_to root_url
        else
            flash.now.alert = "Email or password is invalid"
            render "new"
            # redirect_to new_session_path
        end
    end

    def destroy
        # Kill our cookies!
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out!"
    end
end