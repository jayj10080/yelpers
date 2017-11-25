class NotificationMailer < ApplicationMailer
  default from: "no-reply@yelpersapp.com"


  def comment_added
    mail(to: "jjcoder1000@gmail.com",
          subject: "A comment has been added to your place")
end
end
