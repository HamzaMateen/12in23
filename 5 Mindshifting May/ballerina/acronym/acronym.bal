import ballerina/regex;

# Returns the acronym of the given phrase.
#
# + phrase - a string
# + return - the acronym
function abbreviate(string phrase) returns string {
    // TODO: implement this function
    string depunct = regex:replaceAll()
    string[] splitted = regex:split(phrase, " ");
}
