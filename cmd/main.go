package main

import "fmt"
import "github.com/julienschmidt/httprouter"
import "net/http"

func Hello(w http.ResponseWriter, r *http.Request, ps httprouter.Params) {
	fmt.Fprintf(w, "hello, %s!\n", ps.ByName("name"))
}

func main() {
	router := httprouter.New()
	router.GET("/hello", Hello)
	fmt.Println("hello world")

}
