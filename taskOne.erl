% hello world program
-module(taskOne).
-export([taskOne/0, factorial/1]).


factorial(0) -> 1;
factorial(N) when N > 0 -> N * factorial(N-1). 

taskOne() ->
        {ok, Num} = io:read("Enter a number: "),
         checkNumber(Num).



checkNumber(Num) when not is_integer(Num) ->
      io:format("not an integer~n");
            
checkNumber(Num) when Num < 0, is_integer(Num) ->
   AbsValue = math:pow(abs(Num), 7),               % variable name capitalize first letter.
   io:format("Raise to 7th power and the absolute value is: ~p~n", [AbsValue]);

checkNumber(Num) when Num == 0, is_integer(Num) -> 
   io:format("The number is: ~p~n", [Num]);


checkNumber(Num) when Num > 0, Num rem 7 == 0 -> 
   FiveRoot = math:pow(Num, 1/5),
   io:format("The five root of a number that is both greater than 0 and a multiple of 7: ~p~n", [FiveRoot]);


checkNumber(Num) when Num > 0, not Num rem 7 == 0 -> 
   FactorialNum = factorial(Num),
   io:format("The factorial of a number taht is greater than 0 but not a multiple of 7: ~p~n", [FactorialNum]).

        
      
