// +build integration

package main

import (
    "fmt"
    "testing"
)

func TestCalculate(t *testing.T) {
    if Calculate(2) != 4 {
        t.Error("Expected 2 + 2 to equal 4")
    }
}

func TestTableCalculate(t *testing.T) {
    tests := []struct {
        in int
        want int
    }{
        {in: 2,     want: 4},
        {in: -1,    want: 1},
        {in: 0,     want: 2},
        {in: -5,    want: -3},
        {in: 99999, want: 100001},
    }

    for _, test := range tests {
        if output := Calculate(test.in); output != test.want {
            msg := fmt.Sprint("Test Failed: {} inputted, {} expected, recieved: {}", test.in, test.want, output)
            t.Error(msg)
        }
    }
}
