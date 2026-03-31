@if(!debug)
package main

values: {
	metadata: {
		name:      *"creative-studio-prod" | string
		namespace: *"creative-studio-prod" | string
	}
	app: "creative-studio"
	image: "13.61.15.73/creative-studio/creative-studio@sha256:10a4d90d047ac68a65d0c2a9b14413f3755a3722ada9bf9f87d24260d6e0fa50"
		repository: "13.61.15.73/creative-studio/creative-studio"
        digest: "sha256:10a4d90d047ac68a65d0c2a9b14413f3755a3722ada9bf9f87d24260d6e0fa50"
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

