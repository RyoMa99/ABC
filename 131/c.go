package main

import (
	"fmt"
)

func main() {
	var a, b, c, d int
	fmt.Scan(&a, &b, &c, &d)

	var c_bottom int
	if a%c == 0 {
		c_bottom = a / c
	} else {
		c_bottom = a/c + 1
	}
	c_top := b / c

	var d_bottom int
	if a%d == 0 {
		d_bottom = a / d
	} else {
		d_bottom = a/d + 1
	}
	d_top := b / d

	var lcm_bottom int
	if a%(c*d/gcd(c, d)) == 0 {
		lcm_bottom = a / (c * d / gcd(c, d))
	} else {
		lcm_bottom = a/(c*d/gcd(c, d)) + 1
	}
	lcm_top := b / (c * d / gcd(c, d))

	fmt.Println((b - a + 1) - ((c_top - c_bottom + 1) + (d_top - d_bottom + 1) - (lcm_top - lcm_bottom + 1)))
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}
