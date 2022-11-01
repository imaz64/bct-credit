pragma solidity >= 0.5.0 < 0.9.0;

contract CreditLimit{
    // 2019110009 Imaz Chandiwala BE ETRX

    uint credlim;

    constructor() credlim = 1000;

    function getcredlim() public view returns (uint) return credlim;

    function expense(uint travel, uint food, uint stay) public {
        require(credlim - travel - food - stay >= 0, "This transaction cannot be processed");
        credlim = credlim - travel - food - stay;
    }

    function resetlim() public credlim = 10000;
}
