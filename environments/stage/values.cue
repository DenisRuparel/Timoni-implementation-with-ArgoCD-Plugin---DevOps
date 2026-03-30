@if(!debug)
package main

values: {
	metadata: {
		name:      "creative-studio-stage"
		namespace: "creative-studio-stage"
	}
	app: "creative-studio"
	image: "43.204.35.30/creative-studio/creative-studio@sha256:499b75ad02a17ff10c9ce5d17f34b73ec547687d0ac6438c69090a842dbfe997"
		repository: "43.204.35.30/creative-studio/creative-studio"
        digest: "sha256:499b75ad02a17ff10c9ce5d17f34b73ec547687d0ac6438c69090a842dbfe997"
	}
	replicas: 2
	service: {
		port:     5000
		nodePort: 32001
	}
	strategy: {
		maxUnavailable:  1
		maxSurge:        1
		minReadySeconds: 3
	}
	resources: {
		requests: {
			cpu:    "150m"
			memory: "192Mi"
		}
		limits: {
			cpu:    "300m"
			memory: "384Mi"
		}
	}
	quota: {
		requests: {
			cpu:    "600m"
			memory: "768Mi"
		}
		limits: {
			cpu:    "1200m"
			memory: "1.5Gi"
		}
		pods: "7"
	}
	limits: {
		default: {
			cpu:    "300m"
			memory: "384Mi"
		}
		defaultRequest: {
			cpu:    "150m"
			memory: "192Mi"
		}
	}
	storage: {
		enabled: true
		size:    "768Mi"
		class:   "local-path"
	}
	message: "creative studio running (stage)"
}

