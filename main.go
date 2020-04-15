package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"sync/atomic"

	"github.com/gorilla/mux"
)

var counter uint64

// YourHandler is to set an handle function
func YourHandler(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("A simple route created using Go\n"))
}

func main() {
	atomic.AddUint64(&counter, 0)
	r := mux.NewRouter()
	// Routes consist of a path and a handler function.
	r.HandleFunc("/", YourHandler)
	fmt.Println("Server is running http://localhost:9900 ")
	// Bind to a port and pass our router in
	log.Fatal(http.ListenAndServe(":9900", r))
}

// Counter is for increment on who hits the page
func Counter(w http.ResponseWriter, r *http.Request) {
	atomic.AddUint64(&counter, 1)
	json.NewEncoder(w).Encode(counter)
}
