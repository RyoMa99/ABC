package main

import (
	"fmt"
	"math/big"
)

func main() {
	a := new(big.Int)
	b := new(big.Int)
	fmt.Scan(a, b)

	switch a.Cmp(b) {
	case 1:
		fmt.Println("GREATER")
	case -1:
		fmt.Println("LESS")
	case 0:
		fmt.Println("EQUAL")
	}
}
