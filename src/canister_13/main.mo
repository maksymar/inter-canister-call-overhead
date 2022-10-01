import Canister14 "canister:canister_14";

actor Canister13 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister14.add(a, b, depth - 1);
    };
  };
};
