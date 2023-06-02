public function isIsogram(string sentence) returns boolean {
    // TODO: implement this function
    // O(n) solution

    // declare an array 
    int[123] array = [];

    // for each character in the sentence
    foreach string char in sentence {
        // ignore the spaces and hyphens 
        if (char == " " || char == "-") {
            continue;
        }

        int codePoint = string:toCodePointInt(char);

        if (array[codePoint] == 2) {
            return false;
        } else {
            array[codePoint] += 1;
        }
    }
    
    // after the whole traversal 
    return true;
}
