package main

import "fmt"

func main() {
	var a, b, c string
	fmt.Scan(&a, &b, &c)

	fmt.Println(a[:1] + b[1:2] + c[2:])
}
