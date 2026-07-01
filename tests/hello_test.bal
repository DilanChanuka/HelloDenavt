import ballerina/test;
import testord002/hello;

// This test assigns hello:hello() to a `string` variable.
// With 0.1.0 (returns string)       → compiles and passes.
// With 0.2.0 (returns string|error) → compile error, exposing the sticky bypass.
@test:Config {}
function testHelloVersion() returns error? {
    string result = check hello:hello(());
    test:assertEquals(result, "this is version 0.2.1");
}

@test:Config {}
function testHelloWithName() returns error? {
    string result = check hello:hello("World");
    test:assertEquals(result, "this is version 0.2.1");
}
