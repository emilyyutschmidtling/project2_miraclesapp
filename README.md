# GA WDI Project 2:  Everyday Miracles

No matter what else is going on in the world at large, there are small miracles we encounter in our lives each and every day.  This app provides a place where people can reflect on and share the everyday miracles they’re experiencing.  The idea is to not lose sight of the good things that continue to happen, despite all the crazy stuff happening in the world these days.


Please visit:  https://miracles-app.herokuapp.com
NOTE:  This site is best viewed using Chrome.

Github Repo:  https://github.com/emilyyutschmidtling/project2_miraclesapp

My Trello Project Board:  https://trello.com/b/ScN8aLni/project-2


**_About the Building of this App_**

This app was built using Ruby, Rails, PostgreSQL, Bootstrap, HTML, and CSS, along with a splash of Javascript and JQuery, and tested on Chrome.  User authentication is via Devise.

Currently, the app consists of 3 models - Users, Posts, and Comments.  Setup for the Users model was through the Devise gem.  My next step was to fully CRUD out the Post and Comment models.  

![alt text](https://github.com/emilyyutschmidtling/project2_miraclesapp/blob/master/planning_images/Project%202%20-%20ERD.jpg)

The main page of the app is a stream of all posts and their associated comments.  This page is built in the Post index view page, and allows users to create, edit, and view posts (text and image), as well as make comments on existing posts.

![alt text](https://github.com/emilyyutschmidtling/project2_miraclesapp/blob/master/planning_images/Wireframe1.jpg)

![alt text](https://github.com/emilyyutschmidtling/project2_miraclesapp/blob/master/planning_images/Wireframe2.jpg)

![alt text](https://github.com/emilyyutschmidtling/project2_miraclesapp/blob/master/planning_images/Wireframe3.jpg)


**_Known Bugs_**

- When logged in, all users are able to edit and delete other users' posts and comments, even those that don't belong to them.

- Javascript loading issue: if you click on the "Everyday Miracles" home link in the top left corner of the screen, leave the Edit Profile page without clicking to save, leave the Edit Post without clicking to save, or leave the Edit Comment without clicking to save, the Add New Comment and See/Hide Comments buttons will not work until you have refreshed your browser.  This is caused by the Turbolinks gem.  The jQuery Turbolinks gem (https://github.com/kossnocorp/jquery.turbolinks) is supposed to solve this, but isn't working for this app.  If we can't figure out how to make the jQuery Turbolinks gem work here, the problem can instead be solved by deleting "//= require turbolinks" from the app/assets/javascripts/application.js file.

- Current state: when the user adds or edits a comment, s/he is returned to the Main Post Page at the associated post and must click the "See/Hide Comments" button to see the new or edited comment.  Instead, when the user clicks save and returns to the Main Post Page, it would be cool if s/he returns to part of the page where the new/edited comment is displayed.

- I was unable to seed data for the project using the seed doc in the db folder.  Instead, I seeded a few posts and comments manually on the heroku-deployed site.


**_Future Upgrades_**

- Format text input fields (e.g., specify size of text boxes).

- Format appearance of posts and comments in the Main Post Page.

- Adding a personalized user profile page that aggregates all posts they have submitted (and perhaps comments, as well); a "My Favoriate Things" feature where users can make a note of things that make them happy; and a quote of the day or perhaps a photo of the day feature.

- Adding the ability to find and/or follow friends on the site.

- Scaling the site to display well on smartphones and tablets, as well as computers.

- Incorporating pagination for those who do not wish to have all posts lined up on the same page.


*Many thanks to Kate Wood, Mike Wong, TJ Palazzari, Conrad Sze, Sean Pypers, Taylor Britton, Andrew Franklin, and WDI-SM-24 for their support and assistance in making this work!*
