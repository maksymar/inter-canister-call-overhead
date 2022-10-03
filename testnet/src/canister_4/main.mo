import Canister5 "canister:canister_5";

actor Canister4 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister5.add(a, b, depth - 1);
    };
  };
};
