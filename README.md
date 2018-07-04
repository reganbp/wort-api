WDI-025 Project 2 - Full Stack Project Back End
---
Planning

I planned this project by first deciding what kind of application to build.  I thought the simplest way to meet project would be something like a to do list.  From their (to expand the project a little) I thought I grocery list is just like a to do list.  And finally from a grocery list, a project I thought I could bring my own creativity would be a Homebrewing Recipe site (which is much like a grocery list only with some directions on what to do with the groceries).

After deciding on what to build, I needed to decide what sort of resources I would need to make this application as functional as possible.  I started by drawing my ERDs for each evolution of the project.  From their I planned to do the project in the following way

- Scaffold the resource in Rails
- Test endpoints with curl scripts
- Add relationship/ownership to User
- Debug and update as the front end evolves

Assuming I got through the Front End for these steps fine, I would then

- Scaffold second resource
- Test endpoints
- Add relationship to user
- Create Joins table
- Add relationship to user

---
Development

I started by scaffolding just one resource, which in this case was a recipes table.  After successfully completing that task, which took me a few tries, I tested endpoints with curl scripts.  This proved to be much more difficult than I anticipated and ate up a lot of my time.  Next came adding the relationship to the user by migrating and checking to make sure the relationship/ownership was reflected in the controllers and models. Then I moved to the front end to try and interact.

With the resource set up I did not have to touch it much while working on the front end, however there was at least one time where I had to change the params in the controller and make changes to the serialzer so the front end would respond in a way I wanted.

Had I had time for it, I would have built a second resource in the same way, and again tested it through the front end, before finally adding a joins table.

---
Unsolved Problems and Future Fixes

- I plan to add a second resource for ingredients in the future
- I plan to add a joins table for recipes and ingredients
- I plan to add a 3rd/4th/etc tables for the different types of ingredients and join them to the ingredients list
- I would ultimately like to seed these ingredients tables or use a third party api so the user will not have to type in ingredients, but select them from a list

---
Technologies

- Ruby
- Ruby on Rails
- SQL
- plpgsql

---
ERD

[ERD](https://i.imgur.com/STuu56S.jpg)

---
Front end repo

[Front End](https://github.com/reganbp/wort-client)
