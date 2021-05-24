package main

import "fmt"

func main() {
	var x, t int
	fmt.Scan(&x, &t)

	x -= t
	if x > 0 {
		fmt.Println(x)
	} else {
		fmt.Println(0)
	}
}
