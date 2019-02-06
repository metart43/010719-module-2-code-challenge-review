# Welcome to the Master Branch

This review focuses on creating ActiveRecord models with validations and and using nested forms. There are three steps each in their own branch. During the review we will move through each step and go over our answers:

* **step1** asks you to create the necessary migrations for our models
* **step2** asks you to add validations and associations
* **step3** asks you to complete `app/views/orders/_form.html.erb` as well as the related controller methods

Below is the README used throughout the exercise. Feel free to complete the app from scratch if you are looking for an extra challenge.

# Module 2 Code Challenge Review

## The Domain

We are going to write a site to help a small store keep track of user orders. They need to work with three things: users, orders, and items.

* **customer** will have a first name, a last name, and an email address. Every customer must have a first name, a last name, and an email address. Two customer could have the same name, but they cannot have the same email. A customer should be able to have many orders.

* **items** must have a name and a price. The price must be greater than 0, but might not be an integer (e.g. $12.99). No two items can have the same name. The same item can be on many orders.

* **orders** must belong to *exactly* one customer and one item. Additionally, orders will have a 'quantity' which must be a whole number greater than or equal to 1.

## User stories

Users of our website should be able to:

1. See a list of all orders.
2. Create a new order. When creating a new order they should be able to:
    1. Choose from a list of preexisting items and/or create a new item on the same page.
    2. Choose from a list of preexisting customers or create a new customer on the same page.
3. Edit an order.
