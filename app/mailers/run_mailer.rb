class RunMailer < ApplicationMailer
    def complete_email
        @run = params[:run]
        mail(to: @run.tumbler.user.email_address, subject: "#{@run.tumbler.name} Run Complete")
    end
end
