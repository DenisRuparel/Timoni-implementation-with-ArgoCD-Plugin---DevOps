@if(!debug)
package main

values: {
	metadata: {
		name:      "creative-studio-beta"
		namespace: "creative-studio-beta"
	}
	app: "creative-studio"
	image: {
		repository: "demo.goharbor.io/creative-studio/creative-studio"
        digest: "sha256:e7de90053760442061ec57f18f906b0e7b2a1cc2aac3e9d7a85ca299382eed92"
	}
	replicas: 1
	service: {
		port:     5000
		nodePort: 32002
	}
	strategy: {
		maxUnavailable:  0
		maxSurge:        1
		minReadySeconds: 2
	}
	resources: {
		requests: {
			cpu:    "100m"
			memory: "128Mi"
		}
		limits: {
			cpu:    "250m"
			memory: "256Mi"
		}
	}
	quota: {
		requests: {
			cpu:    "400m"
			memory: "512Mi"
		}
		limits: {
			cpu:    "800m"
			memory: "1Gi"
		}
		pods: "5"
	}
	limits: {
		default: {
			cpu:    "250m"
			memory: "256Mi"
		}
		defaultRequest: {
			cpu:    "100m"
			memory: "128Mi"
		}
	}
	storage: {
		enabled: false
		size:    "512Mi"
		class:   "local-path"
	}
	message: "creative studio running (beta)"
}
