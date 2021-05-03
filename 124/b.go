package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	var n int
	sc.Scan()
	n, _ = strconv.Atoi(sc.Text())

	highest := 0
	count := 0

	var h int
	for i := 0; i < n; i++ {
		sc.Scan()
		h, _ = strconv.Atoi(sc.Text())
		if h >= highest {
			count += 1
			highest = h
		}
	}

	fmt.Println(count)
}
