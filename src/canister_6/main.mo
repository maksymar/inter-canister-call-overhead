import Canister7 "canister:canister_7";

actor Canister6 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister7.add(a, b, depth - 1);
    };
  };
};
