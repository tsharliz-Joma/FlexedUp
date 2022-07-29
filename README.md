# README



Things you may want to cover:

# STATUS #
Completed, Happy with where the presentation version is at.
This version a user has the ability to view the home page , have a look at the trainers page that shows the trainers the gym has available,
If user wished to sign up, there is a page where they can do so on the sign up page, for users that are already members there is also a login 
page for them.

#### Difficulties #### 
I ran into quite a few road blocks and mistakes which were due to my lack of understanding of ruby
specifically issues with the *relationships* and *routes# were where i had the most issues, however i now have a must better understanding of issues
and have learnt how to debug a substantial number of these issues.
I also did not get the chance to deploy on heroku

### SYSTEM DEPENDENCIES ### 
I had 4 models that had depencies in order to work for my application to work 
booking.rb, user.rb, trainer.rb and session.rb. 
- *booking.rb* A booking belonged to a single trainer and a single user 
- *user.rb* A user can have many trainers and also have multiple bookings 
- *trainer.rb* A trainer can have multiple bookings but does not belong to any single booking 
- *session* A session can have many bookings but also belonged to a single trainer

### DATABASE CONFIGURATION ###
At completion i ended up 
- 3 Migrations 
- 5 controllers 
- 4 Sessions 

### Launching ### 
 Here is the link to the github hosted version [The School of Hard Knocks]()

--ruby version--
2.7.6
