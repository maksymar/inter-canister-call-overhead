import Canister18 "canister:canister_18";

actor Canister17 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister18.add(a, b, depth - 1);
    };
  };
};
