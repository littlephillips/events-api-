class AuthController < ApplicationController

    def create
        admin = Admin.find_by(username: params[:username])

        if admin && admin.authenticate(params[:password])
            token = encode_token({admin_id: admin.id})
            render json: {admin: admin, token: token}, status: :accepted
        else
            render json: {errors: "Invalid Username or Password"}, status: :unauthorized
        end
    end

    def destroy 
        admin = Admin.find_by(username: params[:username])
        if admin 
            admin.destroy
            head :no_content
        else
            render json: {errors: "Admin not Found"}, status: :unprocessable_entity
        end
    end
end
