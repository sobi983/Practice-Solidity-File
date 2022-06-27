// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "hardhat/console.sol";
import '@openzeppelin/contracts/utils/Strings.sol';


// 1.State variables and Local Variables of structs, array are always stored in storage by default.
// 2.Function arguments are in memory.

//State variables
// contract sobi{
//     uint  age;
//     string  name;

//     constructor(){
//         age =21;
//         name="Sobi";
//     }
 
//     function setAge(uint a) public{
//        age=a;
//     }
//     function setName(string memory a) public{
//        name=a;
//     }
//     function getAge() public view returns(uint){
//         return age;
//     }
//     function getName() public view returns(string memory){
//         return name;
//     }

// }


//Local Variables 
// contract sobi{

//     function get()pure public returns(string memory) {
//         string memory h="Sohaib";
//         return h;
//     }
// }


//Overflow problem in 0.5.0
// pragma solidity 0.5.0;
// contract sobi{
//     uint8 public n=255;

//     function set() public{
//         n=n+1;
//     }
// }


//Fixed size array( The pre-build functions like pop and push can't be used in Static arrays )
// contract sobi{
// uint[5] arr;

// function set() public{
//     arr[0]=10;
//     arr[1]=20;
//     arr[2]=30;
//     arr[3]=40;
//     arr[4]=50;
// }
// function get(uint index) public view returns (uint){
//       return arr[index];
// }

// function length()public view returns(uint){
//     return arr.length;
//     }
// }


// Dynamic Array
// contract sobi{
//     string[] name;

//     function setNames(string memory n) public{
//         name.push(n);
//     }

//     function removeName() public
//       name.pop();
//     }

//     //the length of the string array cannot be called. it is executable in uint but not in string so this is the simple way of retruning all string array 
//     function length() public view returns(uint){
//         return name.length;
//     }

//     function setindex(uint index)public{
//         name[index]="changed";
//     }

//     function get()public view returns(string[] memory ){
//         return name;
//     }
// }


//Mapping with struct
// contract sobi{
//    struct student{
//        uint age;
//        string name;
//    }
   
//    mapping(uint=>student) public q;
//    function set(uint reg,uint a,string memory n) public{
//       q[reg]=student(a,n);
//    }
// // uint public timestamp=block.timestamp;

// }


//Structure
// contract sobi{
//   struct student{
//       uint age;
//       string name;
//   } 

//   student public ss; //return
//   function set(uint a,string memory n) public {
//       ss.age=a;
//       ss.name=n;
//   }
//   function get()public view returns(student memory){
//     return ss;
//   }
// }


//Sturucture array, push and display the array of the structure 
// contract sobi{
//     struct student{
//         uint age;
//         string name;
//     }
     
//     student[] ss;

//     function setStructure(uint a, string memory b)public{
//         ss.push(student(a,b));
//     }

//     function display() public view returns(student[] memory){
//          return ss;
//     }
// }


//Structure with arrays
// contract sobi{
//   struct student{
//       uint age;
//       string name;
//   }

//   student[] public ss;
//   function set(uint a,string memory n) public{
//       //1st way to initilize into array
//       ss.push(student(a,n));
//       //2nd way to initilize 
//     //   ss.push(student({age:a,name:n}));
//   }

//   function pop(uint index) public  {
//          delete ss[index];
        
// }
//      function length() public view returns(uint){
//           return ss.length;
// }

//     function deleteLength() public view{
//         ss.length;
//     }
//     function get(uint index) public view returns(student memory){
//        return ss[index];
//     }
   
// }


//Events 
// contract Event {
//     // Event declaration
//     // Up to 3 parameters can be indexed.
//     // Indexed parameters helps you filter the logs by the indexed parameter
//     event Log(address indexed sender, string , uint timestamp);
//     event AnotherLog();

//     function test() public returns(uint) {
//        uint timestamp=block.timestamp;
//         emit Log(msg.sender, "Hello World!",timestamp);
//         emit Log(msg.sender, "Hello EVM!",timestamp);
//         emit AnotherLog();
//         return block.timestamp;
//     }
// }


//Zero address 
// contract sobi{
//     function g()public pure returns(address){
//         return address(0);
//     }
// }


//Multi key Mapping 
// contract sobi{
// mapping(string => mapping(uint => uint)) public ss;
// function set()public {
// ss["Sobi"][23]=50000;
// }
// function get()public view returns(string memory){
// re;
// }
// }



//Libraries 
// library SafeMath{
//     function sub(uint256 a, uint256 b) internal pure returns (uint256) {
//           return sub(a, b, "SafeMath: subtraction overflow");
//   }

//     function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
//          require(b <= a, errorMessage);
//          uint256 c = a - b;
//          return c;
//   }
// }


// contract sobi{
// using SafeMath for uint;
// mapping(string=>uint256) public ss;

// function addM(string memory n,uint amount) public {
//     ss[n]=amount;
// }

// function checkConcept(string memory name,uint amount) public {
//     ss[name]=ss[name].sub(amount,"error");
// }

//}



//Sending ether to contract address and Then Sending ether from Contract to address
// contract sobi{
//     // address payable[] a;
//    address payable a = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
   
//     function TransferToContract() public payable{
        
//     }
    
//     function BalanceOfContract()public view returns(uint){
//         return address(this).balance;
//     }
//     function SendToAddress()public payable{
//         a.transfer(1 ether);
//     }

//     function withdraw() public {
//         // get the amount of Ether stored in this contract
//         uint amount = address(this).balance;

//         // send all Ether to owner
//         // Owner can receive Ether since the address of owner is payable
//         (bool success, ) = a.call{value: amount}("");
//         require(success, "Failed to send Ether");
//     }

   
// }

//Making instance instance into other contract
// interface IERC20{
//     function approve(uint amount,address ad)external view returns(bool);
// }

// contract arsl {
// IERC20 public token;

// function set() view public{
// token.approve;
// }
// }


//Overriding virtual 
// contract A{
//     function foo()public pure virtual returns(uint a){
//         a=10;
//         return a;
//     }
// }
// contract B is A{
//     function foo() public override pure returns(uint a){

//     }
// }


//Making contract instance into other contract
// contract A{
//     function foo()public pure  returns(uint a){
//         a=10;
//         return a;
//     }
// }
// contract B {
//     A s;
//     function set()view public{
//         s.foo;
//     }
// }



//Setting up a function that only will be executed when a desire amount of ether would be paid.
// contract sobi{

//     // function rintoContract()payable public{}

//     // function balance()public payable  returns(uint){
//     //  return msg.value;
//     // }
//       function balancee()public  payable returns(address){
//        require(msg.value==1 ether,"error");
//        return msg.sender;
//     }

//     function getBalance()public view returns(uint){
//         return address(this).balance;
//     }

//     function sendEtherToAddress(address payable a) public{
//            a.transfer(1 ether);
//     }
// }



//Storage vs Memory
// contract SobiStorage
// {
//   // Initialising array numbers
//   int[] public numbers;
 
//   // Function to insert values
//   // in the array numbers
//   function Numbers() public
//   {
//     numbers.push(1);
//     numbers.push(2);
 
//     //Creating a new instance
//     int[] storage myArray = numbers;
     
//     // Adding value to the
//     // first index of the new Instance
//     myArray[0] = 0;
//   } 
// }



// contract SobiMemory
// {
//   // Initialising array numbers
//   int[] public numbers;
 
//   // Function to insert values
//   // in the array numbers
//   function Numbers() public
//   {
//     numbers.push(1);
//     numbers.push(2);
 
//     //Creating a new instance
//     int[] memory myArray = numbers;
     
//     // Adding value to the
//     // first index of the new Instance
//     myArray[0] = 0;
//   } 
// }


//Interface usage
// interface IERC721{
//     function addition(uint i,uint q)external pure returns(uint);
// }

// contract calculator is IERC721 {
    
//     function addition(uint i,uint q) public override pure returns(uint){
//         return i+q;
//     }

    
//     function cal()public pure returns (uint){
//       uint a=10;
//       uint b=20;
//       uint ans=addition(a,b);
//       return ans;
//     }
// }


//modifier 
// contract sobi{
//     modifier ss(address a){
//         require(a==msg.sender);
//     _;
//     }
// }
//Modier that check that if the function is called it should be called from the owner
// contract sobi{
//     address admin=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    
//     function add(uint a,uint b)public view check() returns(uint) {
//        return a+b;
//     }
    
//     modifier check(){
//         require(msg.sender== admin);
//         _;
//     }
// }


//Simple practice for events and log
// contract sobi{
//     address _owner;
//     event log(address indexed previousOwner,address indexed CurerentOwner);
//     constructor(){
//       _owner=msg.sender;
//       emit log(address(0),_owner);
//     }


//     function renounceOwnership() public  {
//         emit log(_owner, address(0));
//         _owner = address(0);
//     }

//     function get()external view returns(address){
//         return msg.sender;
//     }

// }

//Add time into the timestamp
// contract sobi{
//   function get()public view returns (uint){
//       return block.timestamp;
//   }
//   function get1()public view returns (uint){
//       return block.timestamp+100;
//   }

// }



//Inheritance of the contrauctor from the base class to the drived class 
//THERE Are two ways to do this 
//1st way
// contract ERC20Detailed {
//     string private _name;
//     string private _symbol;
//     uint private _decimals;

    

//     constructor(string memory n, string memory s, uint d) {
//         _name = n;
//         _symbol = s;
//         _decimals = d;
//     }


// }

//  contract  sobi is ERC20Detailed("sobi","yyy",12){
//       uint total;
//        constructor(){
//         total=10;
//        }
// }

//2nd way 
// contract sobiA{
//     uint age;
//     string name;
//     constructor(string memory n, uint a){
//           name =n;
//           age=a;
//     }
// }
// contract sobiB is sobiA{
//     address mine;
//     constructor() sobiA("sobi",23){
//       mine=msg.sender;
//     }
// }




// //abstract contract
// abstract contract Context {
//     function _msgSender() internal view virtual returns (address);

//     function _msgData() internal view virtual returns (bytes calldata) {
//         return msg.data;
//     }
// }

// contract sobi is Context{
//     function _msgSender() internal view override returns(address){
//         return msg.sender;
//     }
// }


//Super keyword
// contract sobi{
//     function get(uint a)  virtual public returns(uint){
//         return a;
//     }
// }

// contract haris is sobi{
//     function k() public {
//         super.get(10);
//     }
// }


//unchecked arthimetic operation
// contract C {
//     function f(uint a, uint b) pure public returns (uint) {
//         // This subtraction will wrap on underflow.
//         unchecked { return a - b; }
//         // 2-3
//     }

//     function g(uint a, uint b) pure public returns (uint) {
//         // This subtraction will revert on underflow.
//         return a - b;
//     }
// }

// contract sobi{
//     uint public z;
//     uint public c;

// function calculate(uint a,uint b)public  returns(uint){
//     unchecked{
//          c=a-b;
//         return c;
//     }
// }

// function set()public{
//     z=type(uint).max;
// }

// }



//Use error instead of string because it costs low gas 
// contract sobi{
//     uint a=10;
//     error Un();
//     function check(uint b)public view{
//         if(a==b){
//             //23714 gas
//             revert Un();
//         }

//     }
// }


//Max and min function with type
// contract TestContract {
//     uint public a;
//     uint public b;
//     uint public c;
    
//     function myTest() external {
//         a = type(uint8).min;
//         b = type(uint8).max;
//         c=type(uint256).max;
//     }
// }



//Advance structures with arrays 
// contract sobi{
//     constructor(){
//     // stakeholders.push();
//     }
//     struct Stake{
//         address user;
//         uint amount;
//     }

//     struct stakehold{
//         address userr;
//         // Stake[] user_amount;
//     }

//     stakehold[] public stakeholders;

//     function set(address a)public {
//         stakeholders.push();  //The most important part in a structures of the array that we cannot save the variable in the strcuture by just specifying the index we have to first make space my make a push call or just by simply push the element directly 
//         uint index=0;
//         stakeholders[index].userr=a;
//         // stakeholders[0].user_amount.push(Stake(b,10));
//     }
//     function length()public view returns(uint){
//         return stakeholders.length;
//     }
// }


//Delete a mapping 
// contract sobi{
//     uint public count;
//     mapping (address => uint ) public s;
//     function set(address a)public {
//         s[a]=++count;
//     }
//     function del(address d)public {
//         delete s[d];
//     }
// }

//short hand if/else statements 
// contract sobi{
//     function check(uint a,uint b)public pure returns(uint){
//        return  a < b ? a : b;
//     }

//     function ternrary(uint _x) public pure returns (uint) {
//         // if (_x < 10) {
//         //     return 1;
//         // }
//         // return 2;

//         // shorthand way to write if / else statement
//         return _x < 10 ? 1 : 2;
//     }
// }
 
//two ways to declare static array 
//  contract sobi{
//       uint[] s=new uint[](3);
//       uint[3] ss;
//  }


//kecchak256 is the hashing algorithm; there are several hashing algorithms out there but here we shall discuss keccak256
// contract sobi{
//     //abi.encodePacked it concat the types in the parameter and then it converts them into the bytes 
//     //abi.encode It doesn't concat the types and it simple turns the types into the bytes without concatinating them 
//     function seeHashing(string memory text,uint integer,address addrs)public pure returns(bytes32){
//          return keccak256(abi.encode(text,integer,addrs));
//     }
//     //guessing game
//     bytes32 word=keccak256(abi.encode("Solidity"));
//     function guessingGame(string memory w) public view returns(bool){
//        return keccak256(abi.encode(w)) == word;
//     }

// }



//ERC165 understanding it's used to see if this interface is used into the other contract or not
// interface IERC165 {
//     /**
//      * @dev Returns true if this contract implements the interface defined by
//      * `interfaceId`. See the corresponding
//      * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
//      * to learn more about how these ids are created.
//      *
//      * This function call must use less than 30 000 gas.
//      */
//     function supportsInterface(bytes4 interfaceId) external view returns (bool);
// }


// contract sobi is IERC165{
    
//     //  IERC165 i;

//     function get()public view returns(bytes4){
        
//         // return i.supportsInterface.selector;
//         // or
//         // return bytes4(keccak256('supportsInterface(bytes4)'));
//     }

//     function supportsInterface(bytes4 interfaceId)external pure  returns(bool){
//         return false;
//     }
// }

//  contract ERC165 is IERC165 {
//     /**
//      * @dev See {IERC165-supportsInterface}.
//      */
//     function supportsInterface(bytes4 interfaceId) public view  override returns (bool) {
//         return interfaceId == type(IERC165).interfaceId;
//     }
// }


// AccessControl
// contract sobi{

//     bytes4 public ADMIN=bytes4(keccak256(abi.encodePacked("ADMIN")));
//     bytes4 public HELPER=bytes4(keccak256(abi.encodePacked("HELPER")));

//     mapping (bytes4 => mapping (address => bool)) public roles;

//     constructor(){
//       roles[ADMIN][msg.sender]=true;
//     }

//     modifier check(bytes4 user,address adr){
//       require(roles[user][adr]==true,"error");
//       _;
//     }

//     function grandRole(bytes4 user,address adr) public check(ADMIN,msg.sender){
//         roles[user][adr] =true;
//     }
//       function revokeRole(bytes4 user,address adr) public check(ADMIN,msg.sender){
//         roles[user][adr] =false;
//     }
// }

//Simple practice of how we can access a contract value from other contract this is already practiced earlier 
// contract store {
//     uint public value;
//     function set(uint a)public {
//         value = a;
//     }

//     function getValue()public view returns(uint ){
//         return value;
//     }
// }

// interface s{
//        function getValue()external view returns(uint );
// }
// contract displayValue{
  

//     function get(address a)public view returns(uint ){
//         return s(a).getValue();
//     }
// }


//ERC20 RECEIVER 0x4fc35859 bytes4
// interface ERC20Receiver {
//   /**
//    * @notice Handle the receipt of a ERC20 token(s)
//    * @dev The ERC20 smart contract calls this function on the recipient
//    *      after a successful transfer (`safeTransferFrom`).
//    *      This function MAY throw to revert and reject the transfer.
//    *      Return of other than the magic value MUST result in the transaction being reverted.
//    * @notice The contract address is always the message sender.
//    *      A wallet/broker/auction application MUST implement the wallet interface
//    *      if it will accept safe transfers.
//    * @param _operator The address which called `safeTransferFrom` function
//    * @param _from The address which previously owned the token
//    * @param _value amount of tokens which is being transferred
//    * @param _data additional data with no specified format
//    * @return `bytes4(keccak256("onERC20Received(address,address,uint256,bytes)"))` unless throwing
//    */
//   function onERC20Received(address _operator, address _from, uint256 _value, bytes calldata _data) external returns(bytes4);
// }

// interface OnApprove {
//   function onApprove(address owner, address spender, uint256 amount, bytes calldata data) external returns (bool);
// }

// contract sobi{
//     OnApprove i;
//     function gett()public view returns(bytes4){
//         return i.onApprove.selector;
//     }
// }


//Array in the structure
// contract sobi{
//     uint count;
//     struct user{
//         uint[] age;
//     }

//     mapping (string => user)  s;

//     function set(string memory name,uint a)public {
//         s[name].age.push(a);
//     }

//     function get(string memory a,uint index)public view returns(uint){
//         return s[a].age[index];
//     }
//     }

//Extcodes Size
// contract Address{
//         function isContract(address account) public  {
//         // This method relies on extcodesize, which returns 0 for contracts in
//         // construction, since the code is only stored at the end of the
//         // constructor execution.

//         uint256 size;
//         assembly {
//             size := extcodesize(account)
//         }
//         console.log(address(0));
//         // return size > 0 ;
//     }
// }
// library Address{
// event Display(uint256);
//     function isContract(address account) public returns (bool) {
//         // This method relies on extcodesize, which returns 0 for contracts in
//         // construction, since the code is only stored at the end of the
//         // constructor execution.

//         uint256 size;
//         assembly {
//             size := extcodesize(account)
//         }
//         emit Display(size);
//         console.log(size);
//         return size > 0;
//     }
// }
// contract sobi{
//    using Address for address;

//    function a(address uu)public returns(address){
//        if(uu.isContract()){
//                  return uu;
//        }
//    }
// }


//Dynamic array in a function
// contract sobi{
//     uint[]   arr = new uint[](3);
//     event Display(uint) ;
//     function set()public  {
//         uint[] memory b = new uint[](3);
//         for (uint i=0; i < b.length; i++) {
//             b[i] = i;
//         }

//      for(uint i=0;i<b.length;i++){
//        emit Display(b[i]);
//      }
//     }

// }

//fallback() and receive() the most preferable is receive, because receive doesn't need any data it will directly receive ether and other functions can be declared into the same contract while using fallbakc() function, we cannot use other functions in the same contarct it will not receice the ether 
// contract A{

//     receive() external payable {

//     }
//     // fallback() payable{

//     // }

//     function getBalance() public view returns (uint) {
//         return address(this).balance;
//     }
// }


// contract SendToFallback {

//     function transferToFallback(address payable _to) public payable {
//         _to.transfer(msg.value);
//     }

//     function callFallback(address payable _to) public payable {
//         (bool sent, ) = _to.call{value: msg.value}("");
//         require(sent, "Failed to send Ether");
//     }
// }


//Dynamic array in a function 
// contract sobi{
// function get()public pure returns(uint[] memory Amount){
//      uint[] memory arr = new uint[](3);
//      uint a;
//      for (uint i=0;i<3;i++){
//          arr[i]= a;
//          a++;
//      }
//      return arr;
// }

// 



//Convert address to strings
// contract sobi {
//     // using Strings  for string;
//     bytes16 private constant _HEX_SYMBOLS = "0123456789abcdef";
//     uint8 private constant _ADDRESS_LENGTH = 20;

//     string  URL = "https://dragonofmidgardsgame.herokuapp.com/aura/";

//     function toString(bytes memory data) public pure returns(string memory) {
//             bytes memory alphabet = "0123456789abcdef";

//             bytes memory str = new bytes(2 + data.length * 2);
//           str[0] = "0";
//          str[1] = "x";
//            for (uint i = 0; i < data.length; i++) {
//         str[2+i*2] = alphabet[uint(uint8(data[i] >> 4))];
//         str[3+i*2] = alphabet[uint(uint8(data[i] & 0x0f))];
//         }
//           return string(str);
//    }

//    function toString(address account) public pure returns(string memory) {
//     return toString(abi.encodePacked(account));
//    }

//     function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
//         bytes memory buffer = new bytes(2 * length + 2);
//         buffer[0] = "0";
//         buffer[1] = "x";
//         for (uint256 i = 2 * length + 1; i > 1; --i) {
//             buffer[i] = _HEX_SYMBOLS[value & 0xf];
//             value >>= 4;
//         }
//         require(value == 0, "Strings: hex length insufficient");
//         return string(buffer);
//     }

//     /**
//      * @dev Converts an `address` with fixed length of 20 bytes to its not checksummed ASCII `string` hexadecimal representation.
//      */
//     function toHexString(address addr) internal pure returns (string memory) {
//         return toHexString(uint256(uint160(addr)), _ADDRESS_LENGTH);
//     }

//    function set() public returns(string memory){
//         console.log(toHexString(msg.sender));
//         return toHexString(msg.sender);
//    }

//    function get() public view returns(string memory){
//         string memory _address =  toString(msg.sender);
//         string memory URL = "https://dragonofmidgardsgame.herokuapp.com/aura/";
//         string memory ans = string(abi.encodePacked(URL,_address));
//         console.log(ans);
//         return ans;
//    }
// }


//Getter Fucntion
// contract sobi{

//     function get() public pure returns(uint _age, string memory _name){
//         _age = 10;
//         _name = "Sobi";
//     }
// }




