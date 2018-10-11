class ApplicationController < ActionController::Base
    # before_action :authenticate_admin!
    helper_method :current_student
    helper_method :current_teacher
    helper_method :current_admin
    helper_method :authorize
    
    def current_teacher
        if session[:teacher_id]
          @teacher_id ||= Teacher.find(session[:teacher_id])
        end
    end

    def current_student
        if session[:student_id]
          @student_id ||= Student.find(session[:student_id])
        end
    end   

    def current_admin
        if session[:admin_id]
            @admin_id ||= Admin.find(session[:admin_id])
        end
    
    def authorize
        if current_student.nil?
          redirect_to login_path, alert: 'You must be logged in to access this page.'
        end
    end

    def authorize
        if current_teacher.nil?
          redirect_to login_path, alert: 'You must be logged in to access this page.'
        end
    end

    def authorize
        if current_admin.nil?
          redirect_to login_path, alert: 'You must be logged in to access this page.'
        end
    end
end
end