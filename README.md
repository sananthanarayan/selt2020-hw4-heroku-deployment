# HW4

This assignment has 3 instruction documents

1. `2018Fall_HW4PRE_InstructionsForDeployingToHeroku.pdf`
1. `CreateRottenPotatoesCommands.md`
1. `2018Fall_HW4.pdf`


You will need to refer back and forth between these documents.  I recommend starting with `2018Fall_HW4PRE_InstructionsForDeployingToHeroku.pdf`.

Fixes made to the project so that signup and login features also work and all criteria used in grading log passes
1) issue with signup and login was that the create_user method in user.rb needed to include self since the params user was passing in was not getting created and put in database
2) fixed the flash message issue after class on Monday where Professor Johnson had mentioned the class needs to be flashMessage and not message for the flash notices and warnings
3) Final issue in the heroku app was fixing the sessions controller when logging in. Issue was User.find_by_user_id with params of user_id was not working. With help from Chase, used the User.find_by method instead and passed in both usder_id and email for parameters and if user did exist in database, user was able to log in. Also was missing an else statement in sessions controller create method so if user id and email do not exist during login attempt, to go back to login path and send a flash message saying id does not exist. 

I would really like for this new project to be considered for potentially increasing or replacing my current HW4 grade because they were just real small fixes that needed to be done in order for hw to work. It was real small things that were breaking the web app and I have understood why.
