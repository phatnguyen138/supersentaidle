package server

import (
	"encoding/json"
	"net/http"

	"github.com/phatnguyen138/supersentaidle/middleware"
)

func (s *Server) RegisterRoutes() http.Handler {
	mux := http.NewServeMux()

	// Create a new ServeMux for API v1
	api_v1 := http.NewServeMux()
	api_v1.HandleFunc("/health", s.healthHandler)

	// Apply CORS middleware to the API v1 ServeMux
	corsMux := middleware.CorsMiddleware(api_v1)

	// Register the API v1 ServeMux with the main ServeMux under the /api/v1 prefix
	mux.Handle("/api/v1/", http.StripPrefix("/api/v1", corsMux))

	return mux
}

func (s *Server) healthHandler(w http.ResponseWriter, r *http.Request) {
	health_check := map[string]string{
		"Health": "Okay",
	}

	resp, err := json.Marshal(health_check)

	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
	}

	_, _ = w.Write(resp)
}
