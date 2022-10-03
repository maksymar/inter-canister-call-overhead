import Canister11 "canister:canister_11";

actor Canister10 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister11.add(a, b, depth - 1);
    };
  };
};
