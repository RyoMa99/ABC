package main

import "fmt"

func main() {
	var (
		a  int
		b  int
		op string
	)

	fmt.Scan(&a, &op, &b)

	switch op {
	case "+":
		fmt.Println(a + b)
	case "-":
		fmt.Println(a - b)
	}
}
