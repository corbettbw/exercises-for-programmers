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

class DiagnosticTree < Array
    def initialize(question,yes_answer,no_answer)
        self.push question
        self.push yes_answer
        self.push no_answer
    end
    def question
        self[0]
    end
    def yes_answer
        self[1]
    end
    def no_answer
        self[2]
    end
end


def diagnose(tree)
    if tree.class != DiagnosticTree
        puts tree
    else 
        if chooseOne(tree.question,["y","n"]) == "y"
            diagnose(tree.yes_answer)
        else
            diagnose(tree.no_answer)
        end
    end
end

diagnosticTree = DiagnosticTree.new(
    "Is the car silent when you turn the key?",                             # question
    DiagnosticTree.new(                                                     # yes_answer
        "Are the battery terminals corroded?",                              # quesition
        "Clean terminals and try starting again",                           # yes_answer
        "Replace cables and try again"                                      # no_answer
    ),
    DiagnosticTree.new(                                                     # no_answer

        "Does the car make a clicking noise?",                              # question
        "Replace the battery.",                                             # yes_answer
        DiagnosticTree.new(                                                 # no_answer

            "Does the car crank up but fail to start?",                     # question
            "Check spark plug connections",                                 # yes_answer
            DiagnosticTree.new(                                             # no_answer

                "Does the engine start and then die?",                      # question
                DiagnosticTree.new(                                         # yes_answer

                    "Does your car have fuel injection?",                   # question
                    "Get it in for service",                                # yes_answer
                    "Check to ensure the choke is opening and closing."     # no_answer
                ),
                "Get it in for service"                                     # no_answer
            )
        )
    )
)

diagnose(diagnosticTree)


