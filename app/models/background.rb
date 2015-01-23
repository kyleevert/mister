class Background < ActiveRecord::Base
  # attr_accessible :title, :body

  def self.send_notify_email

        user = User.find_by_email("kyle.perez1985@gmail.com")
        subject = "Welcome Email"
        html_content = '<!DOCTYPE html>
                          <html lang="en">
                          <head>
                            <meta charset="utf-8">
                            <title>Welcome</title>
                          </head>

                          <body style="margin: 0 auto;
                                  width: 910px;
                                  text-align: center;
                                  font-family: Arial;
                                  font-size: 25px;">

                            <div style="margin: 20px 0 0 0;text-align:left; float:left;">
                              <img src="http://mister-pompadour-referral.herokuapp.com/assets/refer/email_logo.jpg">
                            </div>

                            <div style="font-size: 34px;
                                  margin: 20px 0 0 20px; float:left; color: #16355D;">
                              <p style="margin: 10px 0 0; text-align: left;">
                                Welcome to the <i>Friend Referral Campaign...</i>
                              </p>
                              <p style="font-weight: bold;text-align:left; margin: 5px 0 0;">Let the Sharing Begin!</p>  
                              <hr style="font-size: 15px; width: 730px;" />
                            </div>

                            <div style="clear: both;"></div>
                            <div style="text-align: left;">
                              <p style="margin: 30px 0 0 0; color: #355F91;"><i>The more friends you refer = the more <b>FREE</b> product you earn! <b>Simple</b>.</i></p>
                            </div>

                            <div style="margin: 15px 0 0 0;">
                              <p style="color: #4F81BC;">'
          html_content += user.referral_code
          html_content += '</p>
                            </div>
                            <div style="margin-top: 5px;">
                              <img src="http://mister-pompadour-referral.herokuapp.com/assets/refer/email_2.jpg">
                            </div>
                            <div style="margin-top: 20px;">
                              <img src="http://mister-pompadour-referral.herokuapp.com/assets/refer/email_1.jpg">
                            </div>

                            <p style="margin: 30px 0 0 0; font-size: 20px; text-align: left; color: #365F91;">Each friend can only be referred once so make sure you reach them
                              <i><b><span style="font-size: 30px;">before others do!</span></b></i></p>
                            
                            <p style="margin: 30px 0 0 0; font-size: 20px; text-align: left; color: #365F91;">This Friend Referral Campaign will only be available Feb. 1-8. Then it is 
                              <i><b><span style="font-size: 30px;">gone forever!</span></b></i></p>
                            <div style="background-color: #233E5F;margin: 40px auto; width: 650px;">
                              <p style="padding: 17px 20px;text-font: 35px; color: white;">LOOK SHARP. BE CONFIDENT.</p>
                            </div>
                            <div style="text-align: left;">
                              <p style="font-size: 17px; text-algin: left;"><i>copyright&#0169; 2015 Mister Pompadaur, LLC, All rights reserved.</i></p>
                            </div>
                            
                            <div style="text-align: left; font-size: 16px; margin-bottom: 50px;">
                              <a href="https://us8.admin.mailchimp.com/templates/*%7CUNSUB%7C*" style="float: left; margin: 0 20px 0 0;">unsubscribe from this list</a>
                              <a href="https://us8.admin.mailchimp.com/templates/*%7CUPDATE_PROFILE%7C*" style="float: left; margin: 0 20px 0 0;">unsubscribe from this list</a>
                              <a href="http://www.misterpompadour.com/" style="float: left; margin: 0 20px 0 0;">www.misterpompadour.com</a>    
                            </div>
                          </body>
                          </html>

                      '

        user.send_mandrill_email(subject, html_content)

        # end_time = AdminUser.first.created_at + 7.days
        # end_time = end_time.to_time.to_i
        # now_time = Time.now.to_time.to_i
        # remain_time = end_time - now_time

        # timestamp_day = 60 * 60 * 24
        # remain_day = remain_time / timestamp_day

        
        # if remain_day <= 3 && remain_day >= 1
        #   puts remain_day
        #   users = User.all
        #   for user in users do
        #     puts user.email

        #     # user.send_remainning_emails remain_day
        #   end
        # end

        
   
    end
end
