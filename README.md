#TypeEverything

	PROGRESS:
	- have buttons styles
	- have uploader task
	- transitioned to React!

	NEXT:
	- Mythos page - cycle of mythos! (a TV-style page of different Mythoi, all in a box, possibly Embiggen when you over (whoo!)
	- stack a bunch of Mythoi photos - pay a guy to put them in a Google Sheet (then curl, validate size, optimize, and store, woot)
	  - later store on S3
	- click button submits vote -> just a simple fading %age ("ENFJ - 11% of people agree with you!", fade out)
	- navbar of Icons - Home (mythos), Categories (hover list of mythoi), Upload/Suggest/Contribute (raised hand), Flag (red flag)
	  - poss also Share, Feedback (paper airplane) - later
	
	NEED:
	- uploader (Mythos, figure name or new, desc if applicable, image URL, dropdown of category (default & for now is all 'fiction' at first))
	- click button submits vote
	- click button shows feedback of agree (either circle of X% agree or bar chart of %s/by type)
	- flag inapprop photos (1 flag hides photo and figure if only photo); shows it up in admin panel) - this photo is inappropriate/this photo is too small
	- give us feedback! box (also shows up in admin panel)
	
	FUTURE:
	- guess by attr (E/N/F/P, or by function (choose functions, then order them) -> choose N, Ni or Ne? -> choose 4, gives you 4 types, choose 1, shows feedback
		- can toggle between modes
	- hide navbar in favor of buttons in upper-R of game (Home: house, Category: wizard, Contribute: hand/paperAirplane, Flag: feedback)
		- Share?: heart, Feedback: (red) flag, -> flag this, give feedback
	- submit more photos button
	- real people mythos ('US Politics' mythos, for example)
	- display clickable Mythoses (Home screen shows 4 random mythos, eventually shows 'Real' vs 'Fiction')
	- Mythoses can be created by users and :star:'d by other users for fun (ie US Presidents and US Politics, or Famous Democrats would all have Barack)
	
	BUGS:
	- CSS Modules still do not work
	
	REQUIREMENTS:
	* Uploader
	  - Name of figure
	  - Description ("Who is this person?")
	  - Image URL or photopicker
	      - Reject if < correct dimensions (must be at least 800x600, preferably evokes an emotion or illustrates/captures the person)
	  - Dropdown of category
	  - Uploader name
	  - Multi-upload (10 at once, 100 at once - whatever batch size is)
	      - Credits to uploader ("Uploaded by" field)
	* Categories on homepage:
	  - Musicians and Artists
	  - Politicians, Scientists, and Historical Figures
	  - Celebrities, Actors, and Athletes
	  - TV, Movie, and Fictional Characters
	* Homepage: TYPEEVERYTHING
	
	
	P1.5:
	* On click, show percentage of people who agree with your vote
	  - Fade in 0.2s, fade out 0.5s
	* "Submit Photos!" button
	  - Link to uploader
	
	P2:
	* "Do you have a better picture of this figure? Click here to upload!" button
	* A/B testing of figure images (multiple images/image URLs)
	
	
	P3:
	* Flag inappropriate pictures (mark as flagged, flagged images don't show)
	* Flag description (=> "Suggest alternate description")
	
	P4:
	* Material design flow outward click effect :)
	* No hover box outline on click of mbti-button
	    
	
	FIGURES TABLE
	- name
	- image-url-id (has-many)
	- figure-category (or category-tags) (has-many)
	- uploader-name (account name?)
	
	
	
	
	
	
	=====================================================================
	####OLD
	
	
	Upload page exists - perhaps is just a modal?
		- name
		- upload (required)
		- dropdown of categories
	Users can create a unique figure with a photo
	Better flash message - flashes white on grey background across screen, fades out - javascript
	
	Have selection menu be presented on page load
	
	
	
	Users can view figures by category
	Categories are displayed at the top of the page
	Figures are displayed as thumbnails with their name and type (or "???") beneath
	  - Gamify: the top 3 types, and number of votes for each, are displayed.
	Clicking a category selects all figures of that category
	
	Users can upload a new photo for an existing figure (Figures can have more than one photo)
	Figures with multiple photos cycle through existing photos.
	
	Navbar: Category, Upload, Feedback (no account yet)
	
	- populate w more figures
	- universalize teh size of the img div
	- overlay form on image
	- make a login page to track subscribers/likers
	- set up google analytics
	- let er rip
	
	- add navbar w/ "Suggest?" // "Upload" button
	- add flash message to game "You typed (Personage) as (Type)!" (green success color, translucent .8)
	- add "I don't know this personage" button in bottom right
	- add share buttons to bottom right
	- add "Cool!" button to bottom right (cool factor, ppl glad this is on here)
	- upvote/downvote personages?
	
	- perhaps move figure title to the side with 'fixed'?
	- perhaps standardize navbar (always on, on top), and displace container down 80-120px. Want to see what this looks like.
	
	
	Account: track your ratings
		- figures page with mini-images of figures and your rating, and your percentage agreement with others (__% agree with you!)
		- percentage is colored red/green/yellow depending on how many people agree with you
		- display personages by category (filter on left hand, slide out on account page)
		- display figures rated (X/143021), progress bar
		- display % of ratings where people agree with you (people agree with you X% of the time, colored red, green, or yellow)
	
	
	MOBILE
	- page is better viewable on half screens (currently collapses)
	
# Debugging

Requires node 9.* (for node-sass version) -> lol
- specify in package.json for Heroku (`node-version: ....`)
