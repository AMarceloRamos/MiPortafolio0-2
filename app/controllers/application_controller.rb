class ApplicationController < ActionController::Base
    NotificationJob.set(wait: 1.minute).perform_later

end
