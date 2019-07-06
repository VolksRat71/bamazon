# Welcome to Bamazon

*What is Bamazon?*

Bamazon is an application that is designed to run with Node.js in a Command Line Interface (CLI) and access information in a database created in SQL. 

*How do you use use Bamazon?*

That would all depend on if you are wanting to use the Customer or manager interface. But to make that distiction you will have to have a working verision of the application, please follow directions in order.

**CLI Setup**	

* Open Git Bash and go to the location that you want your Bamazon.
* Type in following the following command...
		
		$ git clone https://github.com/VolksRat71/bamazon.git

	![CLIsetup](./example_video/clone.gif)

**SQL Setup**

* Open the "bamazon.sql" folder in your code editor and copy its contents into mySQL Workbench.
* Execute the code to create your database.


👍 There you go! You have a working version of the application. Decide which version you want to run, and the you will be prompted your selections. Video following command example should be expected outputs from program.

**FOR MANAGERS**

	$ node bamazonManager.js

	> View Products for Sale

	> View Low Inventory

	> Add to Inventory

	> Add New Product


**FOR CUSTOMERS**

	$ node bamazonCustomer.js



