import SimpleStorage from "./contracts/SimpleStorage.json";
import ComplexStorage from "./contracts/ComplexStorage.json";
import TreasureToken from "./contracts/TreasureToken.json";

const options = {
  web3: {
    block: false,
    fallback: {
      type: "ws",
      url: "ws://127.0.0.1:9545",
    },
  },
  contracts: [SimpleStorage, ComplexStorage, TreasureToken],
  events: {
    SimpleStorage: ["StorageSet"],
  },
  polls: {
    accounts: 1500,
  },
};

export default options;
