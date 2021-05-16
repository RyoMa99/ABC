package main

import (
	"fmt"
	"strings"
)

func main() {
	var s_1, s_2, s_3 string
	fmt.Scan(&s_1, &s_2, &s_3)

	fmt.Println(strings.ToUpper(s_1[:1] + s_2[:1] + s_3[:1]))
}
