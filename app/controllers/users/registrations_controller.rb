class Users::RegistrationsController < Devise::RegistrationsController
# before_filter :configure_sign_up_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    super
  end

  # I extracted the devise controllers in order to customize the create action so that
  # user registration would create a user by attaching it to a student or teacher object
  # since I created the student and teacher models to be polymorphically associated with
  # the user model.
  
  # POST /resource
  def create
    birthdate = Date.new params[:birthdate]['(1i)'].to_i, params[:birthdate]['(2i)'].to_i, params[:birthdate]['(3i)'].to_i
    if person = Teacher.where(first_name: params[:first_name], last_name: params[:last_name], birthdate: birthdate).first
      @user = person.users.new(user_params)
      respond_to do |format|
        if @user.save
          sign_in @user
          format.html { redirect_to dashboard_teachers_path(@user), notice: "User was successfully created." }
        else
          format.html { render :new }
        end
      end
    elsif person = Student.where(first_name: params[:first_name], last_name: params[:last_name], birthdate: birthdate).first
      @user = person.users.new(user_params)
      respond_to do |format|
        if @user.save
          sign_in @user
          format.html { redirect_to dashboard_students_path(@user), notice: "User was successfully created." }
        else
          format.html { render :new }
        end
      end
    else
      flash[:notice] = "No student or teacher matches the names and birthdate you provided. Please try again or contact the administrator."
    end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # You can put the params you want to permit in the empty array.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.for(:sign_up) << :attribute
  # end

  # You can put the params you want to permit in the empty array.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update) << :attribute
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :person_id, :person_type)
    end
end
