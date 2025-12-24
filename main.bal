import ballerina/http;

listener http:Listener httpListener = check new (9090);

service /greeting on httpListener {
    
    resource function get .() returns string {
        return "Hello from Devant";
    }
}
