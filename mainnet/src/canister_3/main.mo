import Canister4 "canister:canister_4";

actor Canister3 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister4.add(a, b, depth - 1);
    };
  };
};
