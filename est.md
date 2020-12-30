
[](#login)Login
---------------

As an **unauthorized user**, I want to **be able to login to the website via a form**, so that I can **access my private information**.

### [](#questions)Questions

*   Will the user enter a username or an email address to login?
    *   User will login via email and password
*   What routes should we use for login?
    *   User will login via `/login` route
*   Where should the user be redirected after login?
    *   User will be redirected to the `/` homepage
*   Will we allow OAuth authentication via a third party?
    *   Not yet -- maybe in a future story
*   What happens if the user doesn't exist yet?
    *   Display the message `Invalid Login :( please try again.`
*   What happens if the user enters the wrong password?
    *   Display the message `Invalid Login :( please try again.`
*   Should this story include allowing a user to reset their password?
    *   Not yet -- maybe in a future story
*   Should logging in use session-based or use token-based authentication?
    *   We will use token-based auth for now

### [](#acceptance-criteria)Acceptance Criteria

1.  **Given** that I'm a logged-out user and
    *   **When** I'm on the `/login` route
    *   **Then** there will be a login form with an email and password field and a "Login" button to submit the form.
2.  **When** I try to fill out the form with an invalid email and password combination and press Enter or press the "Login" button
    *   **Then** at the top of the form, I will see a red message `Invalid Login :( please try again.`
3.  **When** I try to fill out the form with an email that doesn't exist in the system and press Enter or press the "Login" button
    *   **Then** at the top of the form, I will see a red message `Invalid Login :( please try again.`
4.  **When** I try to fill out the form with a valid email and password and press press Enter or press the "Login" button
    *   **Then** I will be redirected to the homepage at the `/` route.
5.  **Given** that I am a logged-in user
    *   **When** I refresh the homepage at the `/` route
    *   **Then** I will still be logged in
6.  **Given** that I am a logged-out user
    *   **When** I try to navigate to the homepage at the `/` route
    *   **Then** I will be redirected to the `/login` route

[](#signup)Signup
-----------------

As an **unauthorized user**, I want to **be able to sign up for the website via a signup form**, so that I can **access Fitness Overflow**.

### [](#questions-1)Questions

*   Will the user enter a username and an email address to signup?
*   Will we confirm their password during signup?
*   What routes should we use for signup?
*   Where should the user be redirected after signup?
*   Will we allow OAuth authentication via a third party?
*   What happens if the user with the username or email already exists?
*   What happens if the user enters the wrong password confirmation?

### [](#acceptance-criteria-1)Acceptance Criteria

1.  **Given** that I'm a user who has not signed up yet and
    *   **When** I'm on the `/signup` route
    *   **Then** there will be a signup form with an email, username, and password field and a "Sign Up" button to submit the form.
2.  **When** I try to fill out the form with an email or username that already exists with a valid password and press Enter or press the "Sign Up" button
    *   **Then** at the top of the form, I will see a red message `User with that email or username already exists.`
3.  **When** I try to fill out the form with a password shorter than 6 characters and press Enter or press the "Sign Up" button
    *   **Then** at the top of the form, I will see a red message `Password must be at least 6 characters long.`
4.  **When** I try to fill out the form with a valid email, username, and password and press Enter or press the "Sign Up" button
    *   **Then** I will be redirected to the homepage at the `/` route.
5.  **Given** that I am a user that just signed up
    *   **When** I refresh the homepage at the `/` route
    *   **Then** I will still be logged in

[](#demo-user)Demo User
-----------------------

As a **first-time user who just wants to demo Fitness Overflow**, I want to **be able to try out the site with a demo user login via a single button click on the login and signup form**, so that I can **access Fitness Overflow without having to go through the trouble of creating a new account**.

...Questions and Acceptance Criteria

[](#logout)Logout
-----------------

As a **logged-in user**, I want to **logout via a button on the navigation bar**, so that I can **hide my account information to the rest of the users on this device**.

...Questions and Acceptance Criteria

[](#see-all-the-questions)See all the Questions
-----------------------------------------

As a **logged-in user**, I want to **see all the questions that users have made in Bluebird as a list on the homepage**, so that I can **see what are on other users' minds**.

...Questions and Acceptance Criteria

[](#create-a-question)Create a question
---------------------------------

As a **logged-in user**, I want to **create a question via a form at the top of the homepage**, so that I can **tell others my current thoughts**.

...Questions and Acceptance Criteria

[](#edit-a-question)Edit a Question
-----------------------------

As a **logged-in user**, I want to **be able to edit my own question that I created and show others that I edited it**, so that I can **better convey my thoughts and let others know that my thoughts may have changed**.

As a **logged-in user**, I want to **see if questions that other users made have been edited**, so that I can **see if there was a difference in their original question**.

...Questions and Acceptance Criteria

[](#delete-a-question)Delete a question
---------------------------------

As a **logged-in user**, I want to **be able to delete my own question**, so that I can **retract my thoughts from the rest of the users so none of the users in Bluebird can see it anymore, including myself**.

...Questions and Acceptance Criteria

[](#like-a-question)Like a question
-----------------------------

As a **logged-in user**, I want to **be able to like a question**, so that I can **convey my appreciation for a question to all other users**.

...Questions and Acceptance Criteria

[](#unlike-a-question)Unlike a question
---------------------------------

As a **logged-in user**, I want to **be able to unlike a question**, so that I can **retract my appreciation for a question to all the other users**.

...Questions and Acceptance Criteria

[](#see-number-of-likes-for-a-question)See number of likes for a question
-------------------------------------------------------------------

As a **logged-in user**, I want to **be able to see the number of likes for a single chirp**, so that I can **see how many other users liked this chirp**.

...Questions and Acceptance Criteria

[](#user-profile-page)User Profile Page
---------------------------------------

As a **logged-in user**, I want to **be able to see all the questions that I created**, so that I can **browse through all my thoughts I shared with the other users on Bluebird**.

As a **logged-in user**, I want to **be able to see all the questions for a single user other than myself**, so that I can **browse through all the thoughts for the user that I'm interested in knowing more about at the moment**.

...Questions and Acceptance Criteria


