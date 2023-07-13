#!/bin/bash

# Define the testcases
testcases=("Hello, world" " " "!12345")

# Define the Reverse function
Reverse() {
    echo "$1" | rev
}

# FuzzReverse equivalent
FuzzReverse() {
    for tc in "${testcases[@]}"; do
        # Add the testcase to the seed corpus
        # (implementation depends on your specific requirements)
        add_to_seed_corpus "$tc"

        # Fuzz logic
        orig="$tc"
        rev=$(Reverse "$orig")
        doubleRev=$(Reverse "$rev")

        if [[ "$orig" != "$doubleRev" ]]; then
            echo "Before: $orig, after: $doubleRev"
        fi

        if [[ "$orig" =~ ^[[:print:]]+$ && ! "$rev" =~ ^[[:print:]]+$ ]]; then
            echo "Reverse produced invalid UTF-8 string: $rev"
        fi
    done
}

# Example function to add a testcase to the seed corpus
add_to_seed_corpus() {
    # Add your implementation to add the testcase to the seed corpus
    echo "Adding to seed corpus: $1"
}

# Run the FuzzReverse equivalent
FuzzReverse
