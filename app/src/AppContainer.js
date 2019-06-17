import Dashboard from "./Dashboard";
import { drizzleConnect } from "drizzle-react";

const mapStateToProps = state => {
  return {
    accounts: state.accounts,
    SimpleStorage: state.contracts.SimpleStorage,
    TreasureToken: state.contracts.TreasureToken,
    drizzleStatus: state.drizzleStatus,
  };
};

const AppContainer = drizzleConnect(Dashboard, mapStateToProps);

export default AppContainer;
