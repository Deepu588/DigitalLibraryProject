**** DIGITAL LIBRARY  ***


Introduction :
--------------


Our digital library is designed to be very convenient and easy to use. By working with OneDrive, we make sure that storing and downloading books is safe and reliable. 

Our goal is to make it easier for everyone to access a wide range of books anytime and anywhere. Whether you need books for school, work, or personal interest, our digital library is a great resource for finding information and learning.



Technology Stack:
-----------------
To Provide user Interface I used html,css,javascript,bootstrap

To write bussiness logic I used spring web mvc.
	
To write queries/ communicate with database I used spring jdbc

To store data inside database application I used mySql.



user side Workflow :
--------------------

When users open the application, they will see a landing page. This page has a horizontal navigation bar with four main options: Signup, Signin, About Us, and Contact Us.

When users click on the "About Us" option, they will learn about the significance of our digital library. It explains how our application makes it easy and convenient to access a wide range of books.


When users click on the "Signup" option, they are taken to a registration page. Users must enter their name, age, contact number, city, email, password, and confirm their password.
 Users should follow  constraints provided in placeholder while creating an account.
When users click on "Register", they will get an alert message stating "Created account successfully".After the alert, the page automatically redirects to the login page.


On the login page, users will see two options: "User Login" and "Admin Login". Users need to enter their email and password to log in.Users enter their email and password in the designated fields. If the entered credentials are invalid, users receive a message stating "Login failed".If the entered credentials are valid, users receive a message stating "Login successful" and are redirected to the homepage which provides various options and information.

 In the navigation bar at the top right corner, users can see their username. This provides a personalized touch to the interface.The navigation bar includes options for "About", "Contact Us", "Profile Settings", and "Logout". These options allow users to navigate the application and manage their account effectively.

The main body of the homepage displays a list of available books. Each book is presented with its title, author.For each book  there is a "View" button. Users can click on this button to view more details about the book.

When users click on the "Contact" option, a contact form is presented to them. This form allows users to submit their feedback or lodge complaints regarding the digital library.Users are required to enter their email address in this field. This allows the administrators to respond to their queries or feedback.
In description  form field, users can enter their feedback or lodge complaints regarding the digital library. They can express their thoughts, suggestions, or concerns.After filling out the form, users can click on the "Send" button to submit their feedback. Upon clicking the "Send" button, users receive an alert message stating "Feedback sent successfully". This confirms that their feedback has been successfully submitted.

This contact form provides users with a convenient way to communicate with the administrators of the digital library, allowing them to voice their opinions and concerns effectively.


When users click on the "Profile Settings" option, they are provided with access to view and manage their account information. Users have the option to edit their profile information by clicking on the "Edit Info" option.Upon clicking "Edit Info", users can make changes to their account information, including updating their email address, contact details, and password if needed.The option to edit profile information provides users with flexibility and control over their account settings.

When users have finished using the application, they can log out by clicking on the "Logout" option. Upon clicking the "Logout" option, the system terminates the user's session and logs them out of their account.After successfully logging out, users receive an alert message stating "You are logged out" and redirected to login page. This confirms that their session has been terminated securely.





Admin Side Workflow :
---------------------
When the admin logs into the application, they are presented with a specialized dashboard that includes options for managing the digital library's content and user feedback.


Add Book: 
--------
Allows the admin to add new books to the digital library. This option opens a form where the admin can enter details such as the book title, author, description, and upload the book file.
The admin can add new books to the library by filling out a form with the book's details and uploading the book file.


View Books: 
-----------
Provides the admin with a list of all the books available in the digital library. The admin can view details of each book, edit book information, or delete books if necessary.
The admin can see a comprehensive list of all books, with options to edit or delete them.

View Feedback: 
--------------
Enables the admin to view feedback submitted by users through the contact form. This helps the admin address any complaints, suggestions, or general feedback from users.
The admin can read and respond to user feedback, helping improve the digital library based on user input.

Logout: 
--------
Logs the admin out of their account, terminating the session and ensuring security. An alert message saying "You are logged out" confirms the action.

 Ensures the admin can securely log out, ending their session and protecting the application from unauthorized access.


This admin dashboard allows for efficient management of the digital library's content and user interactions, ensuring a well-maintained and responsive platform.
