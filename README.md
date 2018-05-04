# README

This is a backend-focused take home interview assessment for the Peterson Center on Healthcare.

This project is a blog post Ruby on Rails application which involves problems we've tackled as a team with legacy code. We're looking to see how you would approach these problems and design solutions for maintainability and performance.

# Context

The current functionality in this application involves creating and viewing two types of content called: 1) 'blog posts' and 2) 'musings'.

![screen shot 2018-05-04 at 9 43 19 am](https://user-images.githubusercontent.com/7111516/39631288-c673c984-4f7f-11e8-8095-2d25ceb57793.png)

You can access a user's index of posts or musings, and add posts/musings by accessing your own index of content.

![screen shot 2018-05-04 at 9 43 31 am](https://user-images.githubusercontent.com/7111516/39631287-c6668044-4f7f-11e8-98cb-d863c2b359ef.png)


You can also add a comment to posts, but not to musings (yet):


![screen shot 2018-05-04 at 9 43 55 am](https://user-images.githubusercontent.com/7111516/39631285-c65657aa-4f7f-11e8-88f8-ad530e126543.png)


There is also an audit log of your activity which you can access via the navbar on top. This records when you've added a post or a musing:


![screen shot 2018-05-04 at 9 44 10 am](https://user-images.githubusercontent.com/7111516/39631284-c641c510-4f7f-11e8-8e05-2a60f6f323c5.png)


SETUP:

1) run `rake db:create db:migrate db:seed` to create and populate the database
2) `bundle install` and then `rails s`
3) Login as one of the three seeded users ("bob@example.com", "mary@example.com", "bill@example.com") to access the application.

# Instructions

There are three major tasks involved for this assessment:

1) Adding comment functionality for 'musings' (you can currently comment on a 'post')

2) Capture commenting activity in the audit log. The current format for logging activity looks like "You added a post/musing called #{TITLE} on #{DATE} at #{TIME}".
  When a comment is added for a post or musing, the audit log should display: "You added a comment #{COMMENT CONTENT} to #{USER'S EMAIL}'s post/musing called #{TITLE} on #{DATE} at #{TIME}."

3) Implement deleting of posts and musings, and capture this activity in the audit log displayed in this format: "You deleted a post/musing called #{TITLE}."

# Additional Information

Please feel free to refactor the current implementation to add the above functionality however you see fit. You will probably need to rethink/redesign some components of the given application in order to execute these tasks.

# Extra Credit

There is currently no way to sign up/register on this application as a new user and there is no authentication for login. An extra credit task would be to implement authentication for logging in using any gems or custom implementation as you see fit.
