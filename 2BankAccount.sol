// SPDX-License-Identifier: MIT
pragma solidity >=0.4.17;

contract Bank {
    int public balance = 1000;

    function updateBalance(int newBalance) private {
        balance = newBalance;
    }

    function withdraw(int amount) public {
        require(balance - amount >= 500, "Insufficient balance");
        int temp = balance - amount;
        updateBalance(temp);
    }

    function deposit(int amount) public {
        int temp = balance + amount;
        updateBalance(temp);
    }
}

