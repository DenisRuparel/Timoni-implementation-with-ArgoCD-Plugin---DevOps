@if(!debug)
package main

values: {
	metadata: {
		name:      "creative-studio"
		namespace: "creative-studio-prod"
	}
	app: "creative-studio"
	image: {
		repository: "demo.goharbor.io/creative-studio/creative-studio"
		digest:     ""
		tag:        ""
	}
	service: {
		port:     5000
		nodePort: 32000
	}
	storage: {
		enabled: false
		size:    "1Gi"
		class:   "local-path"
	}
	message: "creative-studio running"
}
