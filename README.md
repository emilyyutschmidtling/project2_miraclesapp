# GA WDI Project 2:  Everyday Miracles

No matter what else is going on in the world at large, there are small miracles we encounter in our lives each and every day.  This app provides a place where people can reflect on and share the everyday miracles they’re experiencing.  The idea is to not lose sight of the good things that continue to happen, despite all the crazy stuff happening in the world these days.


Please visit:  https://miracles-app.herokuapp.com
NOTE:  This site is best viewed using Chrome.

Github Repo:  https://github.com/eyschmidt1ing/project2_miraclesapp

My Trello Project Board:  https://trello.com/b/ScN8aLni/project-2


**_About the Building of this App_**

This app was built using Ruby, Rails, Bootstrap, HTML, and CSS, along with a splash of Javascript and JQuery, and tested on Chrome.  User authentication is via Devise.

Currently, the app consists of 3 models - Users, Posts, and Comments.  Setup for the Users model was through the Devise gem.  My next step was to fully CRUD out the Post and Comment models.  

![alt text]https://github.com/eyschmidt1ing/project2_miraclesapp/blob/master/planning_images/Project%202%20-%20ERD.jpg

The main page of the app is a stream of all posts and their associated comments.  This page is built in the Post index view page, and allows users to create, edit, and view posts (text and image), as well as make comments on existing posts.

![alt text](https://github.com/eyschmidt1ing/project2_miraclesapp/blob/master/planning_images/Wireframe1.jpg)

![alt text](https://github.com/eyschmidt1ing/project2_miraclesapp/blob/master/planning_images/Wireframe2.jpg)

![alt text](https://github.com/eyschmidt1ing/project2_miraclesapp/blob/master/planning_images/Wireframe3.jpg)


**_Known Bugs and Future Upgrades_**

- When logged in, all users are able to edit and delete other users' posts and comments, not just their own.
- Javascript loading issue: if you click on the "Everyday Miracles" home link in the top left corner of the screen, leave the Edit Profile page without clicking to save, leave the Edit Post without clicking to save, or leave the Edit Comment without clicking to save, the Add New Comment and See/Hide Comments buttons will not work until you have refresh your browser.
- I was unable to seed data for the project using the seed doc in the db folder.  Instead, I seeded a few posts and comments manually on the heroku-deployed site.
- Additional troubleshooting needed to make the Edit Comment feature work.
- Eventually, it would be great to add a personalized user profile page that aggregates all posts they have submitted (and perhaps comments, as well); a "My Favoriate Things" feature where users can make a note of things that make them happy; and a quote of the day or perhaps a photo of the day feature.
- It would be great to add the ability to find and/or follow friends on the site.
- It would be great to scale the site to display well on smartphones and tablets, as well as computers.
- It would be great to incorporate pagination for those who do not wish to have all posts lined up on the same page.


*Many thanks to Kate Wood, Mike Wong, TJ Palazzari, Conrad Sze, Sean Pypers, Taylor Britton, Andrew Franklin, and WDI-SM-24 for their support and assistance in making this work!*
