import Canister8 "canister:canister_8";

actor Canister7 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister8.add(a, b, depth - 1);
    };
  };
};
