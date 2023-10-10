# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```

DAY 1 :- The Task of DAY 1 is to create a Smart Contract 
        Contract 1:- Define an enum named ProductType with values "Book," "Electronics," and "Clothing." Develop a struct named Product containing fields for the product ID, name, price, and product type. Create an array of Product structs and write a function that calculates the total price of all "Electronics" products in the array.
        In this example:
            The ProductType enum represents different types of products (Book, Electronics, Clothing).
            The Product struct defines the properties of a product, including the product ID, name, price, and product type.
            The products array stores the products as instances of the Product struct.
            The addProduct() function allows users to add new products to the array.
            The calculateTotalElectronicsPrice() function calculates the total price of all "Electronics" products in the array.
