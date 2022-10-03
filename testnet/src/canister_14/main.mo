import Canister15 "canister:canister_15";

actor Canister14 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister15.add(a, b, depth - 1);
    };
  };
};
