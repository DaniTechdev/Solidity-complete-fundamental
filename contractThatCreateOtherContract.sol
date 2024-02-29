// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;

contract Car{
    address public owner;
    string public model;
    address public carAddr;

  constructor (address _owner, string memory _model) payable{
    owner = _owner;
    model = _model;
    carAddr = address(this);
  }

}

contract CarFactory {

    Car[] public cars;
//method 1 of creating a contract from another contract
    function create (address _owner,string memory _model)public {
        Car car  = new Car(_owner,_model);
        cars.push(car);
    }
//method 2 of creating a contract from another contract
    function createAndSendEther(address _owner, string memory _model) public payable {
      Car car = (new Car){value:msg.value}(_owner, _model);//passing the argument data to the contructor too
      cars.push(car);
    }
   //method 2 of creating a contract from another contract
    function create2(
      address _owner,
      string memory _model,
      bytes32 _salt
    ) public {
      Car car = (new Car){salt: _salt}(_owner, _model);
      cars.push(car);
    }
       //method 2 of creating a contract from another contract
       function create2AndSendEther(
         address _owner,
      string memory _model,
      bytes32 _salt
       ) public payable {
        Car car =(new Car){value:msg.value, salt:_salt}(_owner,_model);
        cars.push(car);
       }

        function getCar(uint _index) 
        public
        view
        returns(
          address owner,
          string memory model,
          address carAddr,
          uint balance
        )
        {
          Car car = cars[_index];
          return (car.owner(),car.model(),car.carAddr(),address(car).balance);

        }
    
}
//0xd9145CCE52D386f254917e481eB44e9943F39138


