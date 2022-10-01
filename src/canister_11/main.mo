import Canister12 "canister:canister_12";

actor Canister11 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister12.add(a, b, depth - 1);
    };
  };
};
