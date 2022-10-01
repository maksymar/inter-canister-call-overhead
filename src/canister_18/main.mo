import Canister19 "canister:canister_19";

actor Canister18 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister19.add(a, b, depth - 1);
    };
  };
};
