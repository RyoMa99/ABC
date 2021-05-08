package main

import (
	"fmt"
	"time"
)

func main() {
	var s string
	fmt.Scan(&s)
	layout := "2006/01/02"
	t, _ := time.Parse(layout, s)
	b, _ := time.Parse(layout, "2019/04/30")
	if t.After(b) {
		fmt.Println("TBD")
	} else {
		fmt.Println("Heisei")
	}
}
