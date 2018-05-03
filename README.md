# README

This is a backend-focused take home interview assessment for the Peterson Center on Healthcare.

This application is a blog post application which involves problems we've tackled as a team with legacy code. We're looking to see how you would approach these problems and design solutions for readability, performance, and maintainability.

# Instructions

The current functionality in this application involves creating blog posts and leaving comments on the posts. There is currently an audit log of activities that happen in the application which tracks when posts are created.

This application stack is as follows: Ruby on Rails, Postgres, React

SETUP:

1) run `rake db:create db:migrate db:seed` to create and populate the database
2) `bundle install` and then `rails s`


1) Capture commenting activity in the audit log in the format of "{USERNAME} added a comment #{COMMENT BODY} to the post #{POST TITLE}"

2) The current set up of the audit logs do not allow the application to capture when posts or comments are deleted because the audit logs are dependent on the model's presence. Redesign how the audit logs are represented in the application to capture deleting.

3) Include any tests 

4) Import auth into the application
