import ballerina/http;
import ballerina/io;

public function main() returns error? {

    http:Client httpEp = check new(url = "http://run.mocky.io/v3/f15d0e81-e271-41ef-b2b9-79cbfa3926a2");
    http:Response|http:ClientError res = httpEp->get(path = "/");
    if (res is http:Response) {
        io:println("Response: ", res.getJsonPayload());
    } else {
        io:println("Error: ", res);
    }
}

