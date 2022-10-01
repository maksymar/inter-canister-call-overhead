import Canister20 "canister:canister_20";

actor Canister19 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister20.add(a, b, depth - 1);
    };
  };
};
