# Intervals README

### Description
Intervals is an ear training app that creates short aural quizes. Users are awarded marks for passing quizes of various difficulty level.

David Wightman

The application uses Ruby on Rails.

https://trello.com/b/AxQ0c64Z/wdi-project-4 (private)

### Artifacts
#### User Stories
A user will be able to create a profile (name, bio, image) and log in to the application. There a user can take one of many audio quizes of various difficlty. Upon passing an audio quiz a user recieves a notification upon their profile page.

#### Front-end Wireframes

![](https://github.com/davidwightman/intervals/intervals.pdf)

#### Routes

| HTTP Verb  | Path            | Controller#Action | Used for              |
| ---------- | --------------- | ----------------- | --------------------- |
| **Sessions**                                                             |
| Get        | /sessions/new   | sessions#new      | form for login        |
| Post       | /sessions       | sessions#create   | create session        |
| DELETE     | /sessions/:id   | sessions#destroy  | logout of session     |
| **Users**                                                                |
| GET        | /users          | users#index       | displays users        |
| GET        | /users/new      | users#new         | form for adding user  |
| POST       | /users          | users#create      | create new user       |
| GET        | /users/:id      | users#show        | display specific user |
| GET        | /users/:id/edit | users#edit        | form for editing user |
| PUT        | /users/:id      | users#update      | update a user         |
| DELETE     | /users/:id      | users#destroy     | delete a user         |



#### Database Design (ERD/Data Model Diagrams)