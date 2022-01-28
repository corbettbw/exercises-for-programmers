# Gather Info:
    # An expert system is a type of artificial intelligence program that uses a knowledge base and a set of rules to perform a task that a human expert might do. Many websites are available that will help you self-diagnose a medical issue by answering a series of questions. And many hardware and software companies offer online troubleshooting tools to help people solve simple technical issues before calling a human.

# Problem Statement:
    # Create a program that walks the user through troubleshooting issues with a car. Use the following decision tree to build the system:

# Inputs (nouns):
    # issues with a car

# processes (verbs):
    # walks
    # troubleshooting

# Outputs (nouns):
    # solution

# TDD
    # Input:
        # Is the car silent when you turn the key? y
        # Are the battery terminals corroded? n

    # Expected result:
        # The battery cables may be damaged.
        # Replace cables and try again.

    # Actual result:

# Pseudocode:
# Constraints:
    # Ask only questions that are relevant to the situation and to the previous answers. Don’t ask for all inputs at once.

# Challenges:
    # Investigate rules engines and inference engines. These are powerful ways to solve complex problems that are based on rules and facts. Identify a rules engine for your programming language and use it to solve this problem.

require '../useful_methods.rb'

answerChain = chooseOne("Is the car silent when you turn the key?", ["y","n"])
if answerChain == "y"
    answerChain += chooseOne("Are the battery terminals corroded?",["y","n"]) # answerChain = "yy" or "yn"
    if answerChain == "yy"
        puts "Clean terminals and try starting again"
    else
        puts "Replace cables and try again"
    end
else
    answerChain += chooseOne("Does the car make a clicking noise?",["y","n"]) # answerChain = "ny" or "nn"
    if answerChain == "ny"
        puts "Replace the battery."
    else
        answerChain += chooseOne("Does the car crank up but fail to start?",["y","n"]) # answerChain = "nny" or "nnn"
        if answerChain == "nny"
            puts "Check spark plug connections"
        else
            answerChain += chooseOne("Does the engine start and then die?", ["y","n"]) # answerChain = "nnny" or "nnnn"
            if answerChain == "nnnn"
                puts "Get it in for service"
            else
                answerChain += chooseOne("Does your car have fuel injection?",["y","n"]) # answerChain = "nnnyn"
                if answerChain == "nnnyn"
                    puts "Check to ensure the choke is opening and closing."
                else 
                    puts "get it in for service"
                end
            end
        end
    end
end






