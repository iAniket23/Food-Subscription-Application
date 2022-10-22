package main

import "fmt"

func main() {
	var a [5]int
	a[2] = 7
	i := a[2]
	fmt.Println(i)
}

