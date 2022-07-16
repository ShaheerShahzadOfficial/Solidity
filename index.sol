// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;

contract task1
{
    address owner;
uint8 public a ;
uint8 public b ;
uint8 public c ;
    constructor(){
        owner = 0x5B4CBA0BdafFB8C8A24cEef4e86aF88bC5942255;
        a = 1;
        b=2;
    }



  

modifier onlyOwner(){
    require(msg.sender == owner,"Error");
    _;
}

   function getA() public view returns(uint8)
    {
    return(a);
    } 

function setA(uint8 _a) public onlyOwner {
    a=_a;
}


function add(uint8 _a,uint8 _b) public  returns(uint8){
    a=_a;
    b=_b;
  c = a + b;
  return(c);
  }

function subtract(uint8 _a,uint8 _b) public  returns(uint8){
    a=_a;
    b=_b;
  c = a - b;
  return(c);
  }

function multiply(uint8 _a,uint8 _b) public  returns(uint8){
    a=_a;
    b=_b;
  c = a*b;
  return(c);
  }


function divide(uint8 _a,uint8 _b) public  returns(uint8){
    a=_a;
    b=_b;
  c = a/b;
  return(c);
  }

}







