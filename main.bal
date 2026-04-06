import ballerina/http;
import ballerina/lang.runtime;
import ballerina/log;

listener http:Listener httpListener = check new (9090);

service /greeting on httpListener {
    
    resource function get .() returns string {
        // Sleep for 60 seconds
        runtime:sleep(60.0);
        
        // Print the log
        log:printInfo("Greeting resource accessed after 60s delay");

        return "Hello from Devant";
    }
}
