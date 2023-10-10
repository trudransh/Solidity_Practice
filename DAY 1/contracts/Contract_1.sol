// SPDX-License_Identifier: MIT
pragma solidity ^0.8.0;

contract con_1 {
    enum ProductType {
        Book,
        Electronics,
        Clothing
    }
    struct Product {
        uint256 Product_id;
        string name;
        uint256 price;
        ProductType productType;
    }
    Product[] product;

    function addProduct() public view returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < prodct.length; i++) {
            if (product[i].productType == 1) {
                sum = sum + product[i].price;
            }
        }
        return sum;
    }
}
