## INTRODUCTION

Its an User, Review, and Product

## Description

We have three models: User, Review, and Product.

For our purposes, a Product has many Users, a User has many Products’ s, and a Review belongs to a User and to a Product.

Product - User is a many to many relationship.


## Getting Started
Here is UML access link ["https://dbdiagram.io/d/63fb413f296d97641d83c989"]

To setup an environment:
.Open the terminal[https://github.com/jwillie-26/Active-record-code-challange]
.Navigate to the project directory

.Run rake db:create_migrations Name=create_users
run three times for table of users,reviews and products.

.Run bundle init,bundle install the necessary gem files.

.Then run bin/user.rb
 
 .To test your code we use run this command in the terminal:rake console,

 .You can check all the methods to use in the console by running rake -T



## Functionality

 # Classes and Instances
 We have three classes User,Review and product.
 we use Active Record association macros and Active Record query methods where appropriate (i.e. has_many, has_many through, and belongs_to).

 
    instances--->    Review
            Review#user
                Returns the User instance for this Review
            Review#product
                Returns the Product instance for this Review

     instances--->   Product
            Product#reviews
                Returns a collection of all the Reviews for the Product
            Product#users
                Returns a collection of all the Users who reviewed the Product

     instances--->   User
            User#reviews
                Returns a collection of all the Reviews that the User has given
            User#products
                Returns a collection of all the Products that the User has reviewe



## Credits

Technologies used include Ruby 

