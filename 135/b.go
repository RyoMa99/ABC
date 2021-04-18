package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	incorrect_count := 0
	for i := 0; i < n; i++ {
		sc.Scan()
		num, _ := strconv.Atoi(sc.Text())

		if i+1 != num {
			incorrect_count++
		}
	}

	if incorrect_count > 2 {
		fmt.Println("NO")
	} else {
		fmt.Println("YES")
	}
}

func readline2IntArray() []int {
	scanner := bufio.NewScanner(os.Stdin)

	if !scanner.Scan() {
		err := scanner.Err()
		fmt.Fprintln(os.Stderr, "reading standard input:", err)
		os.Exit(1)
	}

	line := scanner.Text()
	chars := strings.Split(line, " ")
	A := make([]int, len(chars))
	for i, ch := range chars {
		num, err := strconv.Atoi(ch)
		if err != nil {
			fmt.Println(err)
			os.Exit(1)
		}
		A[i] = num
	}
	return A
}
