package main

import (
	"fmt"
	"math/big"
)

func main() {
	var w, h, x, y int
	fmt.Scan(&w, &h, &x, &y)

	multi := 0
	if (w%2 == 0) && (h%2 == 0) && (w/2 == x) && (h/2 == y) {
		multi = 1
	}

	area := big.NewRat(int64(w*h), 2).FloatString(9)

	fmt.Println(area, multi)
}
