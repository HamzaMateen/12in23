import ballerina/http;

# Add the necessary attributes to this record to accept two operands and an operator.
#
# + operand1 - Is a float used as the first operand in an equation
# + operand2 - Is a float used as the second operand in an equation
# + operator - Is a string that represents the operator
// public type Calculation record {|
// |};

public type Calculation record {|
    float operand1;
    float operand2;
    string operator;
|};


# Add the necessary attributes to this record to include the result value and the expression.
#
# + result - The result of the operation
# + expression - The evaluated expression that used to calculate the result
public type Response record {|
    float result; 
    string expression;
|};


service / on new http:Listener(9090) {
    resource function post calc(Calculation rec) returns json {
        Calculation {operand1: o1, operand2 :o2, operator} = rec;

        float answer;
        match operator {
            "+" => {
                answer = o1 + o2;
            }
            "-" => {
                answer = o1 - o2;
            }
            "*" | "x" => {
                answer = o1 * o2;
            }
            "/" => {
                answer = o1 / o2;
            }
            _ => {
                answer = 0;
            }
        }

        // after calculation 
        Response newResponse = {
            expression: o1.toString() + operator + o2.toString(),
            result: answer
        };

        return newResponse.toJson();
    }
}
