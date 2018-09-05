# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (Country has_many Cities)
- [x] Include at least one belongs_to relationship (City belongs_to Country)
- [x] Include at least one has_many through relationship (User has_many Cities through Trips, User has_many Countries through Trips, vis versa)
- [x] The "through" part of the has_many through includes at least one user submittable attribute (length_of_trip for Trips)
- [x] Include reasonable validations for simple model objects (User, City, Country, Trip -- all have validations)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
<!-- not sure if I am doing this -->
- [x] Include signup (users/new.html.erb)
- [x] Include login (sessions/new.html.erb)
- [x] Include logout (users/show.html.erb -- destroy method)
- [x] Include third party signup/login (Facebook)
- [ ] Include nested resource show or index (URL e.g. users/2/recipes)
<!-- attempting but getting confused w/ users/[:id]/trips -->
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
<!-- attempting but getting confused w/ users/[:id]/trips/new -->
- [x] Include form display of validation errors (users form, trips form)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
