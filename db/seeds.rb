
User.destroy_all 

ul = User.create :name => "Julio Cesar Chavez", :image => "https://www.ringtv.com/wp-content/uploads/2012/02/file_171349_1_Julio_Cesar_Chavez.jpg" :email => "lightweight@ga.com" :password => "chicken" :favourite => "Big F", :admin => true
u2 = User.create :name => "Pernell Whitaker", :image => "https://www.sportsnet.ca/wp-content/uploads/2019/07/Pernell-Whitaker-leans-away-from-Oscar-De-La-Hoya-punch.jpg", :email => "sweetpea@ga.com" ,:password => "chicken", 
u3 = User.create :name => "James Toney" , :image => "https://media.gettyimages.com/photos/james-toney-gets-ready-in-the-ring-against-mike-mccallum-during-the-picture-id178191958?s=612x612", :email => "lightsout@ga.com", :password => "chicken"
u4 = User.create :name => "Roy Jones Jr", :image => "https://www.gannett-cdn.com/-mm-/2acf57b34d27657e143fdc5cdcc52016b303f52b/c=0-29-2132-1233/local/-/media/2018/02/06/Pensacola/Pensacola/636535355205467767-JONES2.jpg", :email => "cantbetouched@ga.com", :password => "chicken"
u5 = User.create :name => "Prince Naseem Hamed", :image => "https://www.ringtv.com/wp-content/uploads/2015/06/Hamed-Vazquez-Photo-by-John-Gichigi-Allsport.jpg", :email => "prince@ga.com" , :password => "chicken"
u6 = User.create :name => "Devn Haney", :image => "https://s3.us-west-1.amazonaws.com/boxeomundial.com/wp-content/uploads/2019/01/12115920/Devin-Haney.jpg" , :email => "thedream@ga.com" , :password => "chicken"

puts "#{ User.count } users Created "

Trainer.destroy_all 

t1 = Trainer.create :name => "Action Jackson", :image => "https://ultimateactionmovies.com/wp-content/uploads/2019/04/ACTION-JACKSON.jpg", :speciality => "Jabs" 
t2 = Trainer.create :name => "The Rapter Raymond", :image => "https://pbs.twimg.com/media/DbAZrQ7W0AALS03.jpg" , :speciality => "Slippery manuvers"
t3 = Trainer.create :name => "LazerBeem Larry", :image => "https://static.wikia.nocookie.net/xmenmovies/images/d/d3/Cyclops_04.jpg/revision/latest?cb=20140330215941" , :speciality => "Math Abs"
t4 = Trainer.create :name => "Chubby chuck" , :image => "https://pbs.twimg.com/media/C8WsR_kUwAAhdLw.jpg" , :speciality => "Chips and dips"
t5 = Trainer.create :name => "Rolled up Robert", :image => "https://i.kym-cdn.com/photos/images/newsfeed/001/124/447/054.jpg", :speciality => "Spaced out Hooks"
t6 = Trainer.create :name => "Meat head Memphis", :image => "https://static.wikia.nocookie.net/heroes-of-the-characters/images/7/75/Memphis%27_close_up.png/revision/latest?cb=20200530115609", :speciality => "Moves likes Jagger"
Booking.destroy_all

b1 = Booking.create :tnd => "2022-07-29" , :location => "Wonthaggi"
b2 = Booking.create :tnd => "2022-08-25" , :location => "Leongtha"
b3 = Booking.create :tnd => "2022-12-16" , :location => "Warragul"


# ASSOCIATIONS #################

# Trainers has_many users
puts "Trainers and Users"
t1.users << u1 << u2 # assigning user1 and user2 to trainer 1
t2.users << u3 << u4 # user3 and user 4 and belong to trainer2
t3.users << u5 << u6 # trainer 
t4.users << u1 << u3 << u6
t5.users << u4 << u2 << u1
t6.users << u2 << u3 << u6
# Users and traines 
puts "Users and trainers "
u1.trainers << t1 << t2 << t3
u2.trainers << t1 << t3
u3.trainers << t2 << t4
u5.trainers << t6 << t5 << t2
u4.trainers << t5 << t1
u6.trainers << t1 << t4 << t2
# trainers has_many bookings
puts "Trainers and bookings"
t1.bookings << b1
t2.bookings << b2
t3.bookings << b3

#Bookings has_many users 
puts "Users and Bookings"
b1.trainers << t1  # Because trainer1 already has users 1 and 2 assigned to him so b1 will have trainer1 and user1 , user2
b2.trainers << t2  # trainer2 has user3 and user4 assigned to him, so booking 2 has t2, u2,u3
b3.trainers << t3 # trainer3 << u5 << u6 , b3 = trainer3 << u5 << u6


















