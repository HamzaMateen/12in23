import ballerina/http;
import ballerina/io;

// Use the following endpoints to send HTTP GET request to get quotes

// This is an existing endpoint (which will be automatically spawned by the test framework)
final http:Client brainyQuoteClient = check new ("http://localhost:9095/brainyquote");

// This is a non-existing endpoint.
final http:Client legacyClient = check new ("http://localhost:6060/legacyquote");


public function main() returns error? {

    // Invoke the `brainyQuoteClient` using HTTP GET request on "/"
    // string | error quote = brainyQuoteClient->/;
    // string | error quote = brainyQuoteClient->/;
    string | error quote = brainQuoteClient->/;

    // Invocation returns a 'union type' which can either be an 'string' type or an 'error' type.
    // Assign it to variable.

    // Use type-guard to handle when the response is
    // 1. string
    // 2. error
    // For case with string, you need to print it the console (io:println)
    // For error case, print the error message to the console (io:println)
    if (quote is error) {
        io:println(quote.message());
    } else {
        io:println(quote);
    }

    string | error legacyQuote = legacyClient->/;

    // if (legacyQuote is string) {
    //     io:println(legacyQuote);
    // } else {
    //     io:println(legacyQuote);
    // }
    
    if (legacyQuote is error) {
        io:println(legacyQuote.message());
        return legacyQuote;
    } else {
        io:println(legacyQuote);
    }
    // Similarly implement the same logic for the invocation of the `legacyClient` endpoint
    // Finally, use the `check` expression when retrieving the response from the `legacyClient` endpoint
}
