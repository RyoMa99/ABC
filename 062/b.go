package main

import (
	"fmt"
	"strings"
)

func main() {
	var h, w int
	fmt.Scan(&h, &w)

	picture := []string{}
	picture = append(picture, strings.Repeat("#", w+2))
	for i := 0; i < h; i++ {
		var s string
		fmt.Scan(&s)
		picture = append(picture, "#"+s+"#")
	}
	picture = append(picture, strings.Repeat("#", w+2))

	for i := 0; i < h+2; i++ {
		fmt.Println(picture[i])
	}
}
