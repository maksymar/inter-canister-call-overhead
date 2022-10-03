import Canister10 "canister:canister_10";

actor Canister9 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister10.add(a, b, depth - 1);
    };
  };
};
