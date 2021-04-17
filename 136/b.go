package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n string
	fmt.Scan(&n)
	n2i, _ := strconv.Atoi(n)

	var ans int

	switch len(n) {
	case 1:
		ans = n2i
	case 2:
		ans = 9
	case 3:
		ans = n2i - 99 + 9
	case 4:
		ans = 900 + 9
	case 5:
		ans = n2i - 9999 + 900 + 9
	case 6:
		ans = 90000 + 900 + 9

	}

	fmt.Println(ans)
}
