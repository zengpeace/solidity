contract C {
    struct S { uint x; }
    S s;
    struct T { }
    T t;
    function f() public pure {
        bytes32 a = sha256(s, t);
        a;
    }
}
// ----
// Warning: Defining empty structs is deprecated.
// TypeError: This type cannot be encoded.
// TypeError: This type cannot be encoded.
