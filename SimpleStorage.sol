// SPDX-License-Identifier: MIT
// Basic of Solidity
pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256 favioratenumber;

    People[] public people;

    struct People {
        uint256 favioratenumber;
        string name;
    }
    mapping(string => uint256) public nameToFavioratenumber;
    function store(uint256 _favioratenumber) public virtual  {
        favioratenumber = _favioratenumber;
    }
    // view and pure 
    function retrive() public view returns(uint256){
        return favioratenumber;
    }
    function AddPerson(uint256 _favioratenumber, string memory _name) public {
       // People memory newperson = People({favioratenumber : _favioratenumber,name : _name});  
       // People memory newperson = People(_favioratenumber , _name);
        people.push(People(_favioratenumber , _name));
        nameToFavioratenumber[_name] = _favioratenumber;
    }

}
// 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4