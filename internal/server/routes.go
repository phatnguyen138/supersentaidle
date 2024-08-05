package server

import (
	"encoding/json"
	"log"
	"net/http"

	"github.com/phatnguyen138/supersentaidle/middleware"
)

func (s *Server) RegisterRoutes() http.Handler {

	mux := http.NewServeMux()
	mux.HandleFunc("/", s.HelloWorldHandler)

	mux.HandleFunc("/health", s.healthHandler)
	corsMux := middleware.CorsMiddleware(mux)


	return corsMux
}

func (s *Server) HelloWorldHandler(w http.ResponseWriter, r *http.Request) {
	resp := make(map[string]string)
	resp["message"] = "Hello World"

	jsonResp, err := json.Marshal(resp)
	if err != nil {
		log.Fatalf("error handling JSON marshal. Err: %v", err)
	}

	_, _ = w.Write(jsonResp)
}

func (s *Server) healthHandler(w http.ResponseWriter, r *http.Request) {
	health_check := map[string]string{
		"Health": "Okay",
	}

	resp, err := json.Marshal(health_check)

	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
	}

	_,_ = w.Write(resp)
}
