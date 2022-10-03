import Canister3 "canister:canister_3";

actor Canister2 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister3.add(a, b, depth - 1);
    };
  };
};
