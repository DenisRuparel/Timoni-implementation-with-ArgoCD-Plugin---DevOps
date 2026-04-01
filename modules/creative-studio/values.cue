@if(!debug)
package main

values: {
    metadata: {
        name:      *"creative-studio-prod" | string
        namespace: *"creative-studio-prod" | string
    }
    app: "creative-studio"

    image: {
        repository: "13.233.247.153/creative-studio/creative-studio"
        digest: "sha256:4d22ecb4fe77c6fb7582039e5130b9ada8afc83348576c3a650b2271e52f53f9"
		tag: ""
    }
	replicas: 3
	service: {
		port:     5000
		nodePort: 32000
	}
	strategy: {
		maxUnavailable:  1
		maxSurge:        1
		minReadySeconds: 5
	}
	resources: {
		requests: {
			cpu:    "200m"
			memory: "256Mi"
		}
		limits: {
			cpu:    "400m"
			memory: "512Mi"
		}
	}
	quota: {
		requests: {
			cpu:    "800m"
			memory: "768Mi"
		}
		limits: {
			cpu:    "1500m"
			memory: "1.5Gi"
		}
		pods: "10"
	}
	limits: {
		default: {
			cpu:    "400m"
			memory: "512Mi"
		}
		defaultRequest: {
			cpu:    "150m"
			memory: "256Mi"
		}
	}
	storage: {
		enabled: true
		size:    "1Gi"
		class:   "local-path"
	}
	message: "creative studio running (prod)"
}

