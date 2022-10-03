export const idlFactory = ({ IDL }) => {
  const Time = IDL.Int;
  return IDL.Service({
    'compute_iterations' : IDL.Func([IDL.Nat, IDL.Nat], [IDL.Nat], []),
    'compute_time' : IDL.Func([IDL.Nat, IDL.Nat], [Time], []),
  });
};
export const init = ({ IDL }) => { return []; };
