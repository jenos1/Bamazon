# Bamazon
* This is an Amazon-like storefront  / command line application that takes in orders from customers and depletes stock from the store's inventory.

## Bamazon Customer

### The inital user view:
* Allows user to view the current items available for purchase. The user is prompted to enter the item id# and how many items they wish to purchase. 

![Screenshot](/images/InitialCustomerView.png?raw=true "InitialCustomerView")

### The successful purchase view:
* If the item is in stock, the order will be completed and the user will see the total amount of their purchase.

![Screenshot](/images/SuccessfulPurchase.png?raw=true "SuccessfulPurchase")

### The unsuccessful purchase view:
* If the user enters a quantity that is more than Bamazon has in stock, then user is notified and sent back to re-enter purchase quantity information.

![Screenshot](/images/UnsuccessfulPurchase.png?raw=true "UnsuccessfulPurchase")

## Technologies Used
* Javascript
* MySQL
* npm packages:
  * mysql
  * inquirer
  * console.table

  ## Contributors:
  * JoAnn Enos

