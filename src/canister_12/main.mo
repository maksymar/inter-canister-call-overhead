import Canister13 "canister:canister_13";

actor Canister12 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister13.add(a, b, depth - 1);
    };
  };
};
