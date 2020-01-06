# GALLERY

A complete GALLERY model on Rails

its simple cool with all the common necessary features 

features-list: 1. secure login system.
               2. upload images.
               3. Admin authentication.
               4. Add categories for admin users.
               5. Porfile pages which show your "bio", "profile-image", "posts".
               
               
               
GETTING STARTED
1. You have to install "rmagick" in your is, just Google it how to install.
2. clone the repositery to your desired location.
3. open gallery folder (which is present in your desired location where you clone the repo) and open terminal in gallery location.
4. write "bundle install" in the terminal.
5. write ("rials server") in the terminal.
6. open "http://localhost:3000/" and enjoy.
7. feel free to upgrade it according to you.

$$ Ruby and Ruby on rails must be properly installed on your PC.

IMPORTANT POINT: 
if you want to login as an Admin user to use the full functionality of this site, Please use the given credential for login, otherwise signup, you will find the signup link in login section.

EMAIL: "hello@hello.com"

PASSWORD: '12345asdf'

but if you want to make your account an Admin one, please follow given instructions-
 1. press "ctrl+c" in the terminal, if will terminate the rails server.
 2. write "rails console" in the terminal.
 3. write "user = User.find_by(email: 'your email address')".
 4. then "user.toggle!(:admin)".
 5. write "user.save".
 you are done, close the console by writing "exit", then again start your rials server(write "rails server" in the console) and the full functionality of this application on your account.

