package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type Drink struct {
	price int
	rest  int
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	m, _ := strconv.Atoi(sc.Text())

	var drinks []Drink
	for i := 0; i < n; i++ {
		sc.Scan()
		a, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		b, _ := strconv.Atoi(sc.Text())
		drinks = append(drinks, Drink{a, b})
	}
	sort.SliceStable(drinks, func(i, j int) bool { return drinks[i].price < drinks[j].price })

	cost := 0
	for _, drink := range drinks {
		if m > drink.rest {
			m -= drink.rest
			cost += drink.price * drink.rest
		} else {
			cost += drink.price * m
			break
		}
	}

	fmt.Println(cost)
}
