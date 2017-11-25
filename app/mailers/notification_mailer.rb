class NotificationMailer < ApplicationMailer
  default from: "no-reply@yelpersapp.com"

  def comment_added
    mail(to: "jayj10080@gmail.com",
          subject: "A comment has been added to your place")
end
end
