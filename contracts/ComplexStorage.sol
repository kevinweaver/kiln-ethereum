pragma solidity >=0.4.21 <0.6.0;

contract ComplexStorage {
    uint public storeduint1 = 15;
    uint public constant constuint = 16;
    uint128 public investmentsLimit = 17055;
    uint32 public investmentsDeadlineTimeStamp = uint32(now);

    bytes16 public string1 = "test1";
    bytes32 public string2 = "test1236";
    string public string3 = "lets string something";

    mapping (address => uint) uints1;
    mapping (address => PlayerData) structs1;

    uint[] public uintarray;
    PlayerData[] public playerDataArray;
    PlayerData public singlePD;

    struct PlayerData {
        string playerBrand;
        string playerYear;
        string batteryWearLevel;
    }

    constructor() public {
        address address1 = 0xbCcc714d56bc0da0fd33d96d2a87b680dD6D0DF6;
        address address2 = 0xaee905FdD3ED851e48d22059575b9F4245A82B04;

        uints1[address1] = 88;
        uints1[address2] = 99;

        structs1[address1] = PlayerData("playerBrand", "playerYear", "wearLevel");
        structs1[address2] = PlayerData("playerBrand2", "playerYear2", "wearLevel2");
        singlePD = PlayerData("playerBrand3", "playerYear3", "wearLevel3");

        uintarray.push(8000);
        uintarray.push(9000);

        playerDataArray.push(structs1[address1]);
        playerDataArray.push(structs1[address2]);
    }
}
