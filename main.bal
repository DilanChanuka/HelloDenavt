import ballerina/io;
import testord002/hello;

public function main() returns error? {
    string result = check hello:hello(());
    io:println(result);
}
