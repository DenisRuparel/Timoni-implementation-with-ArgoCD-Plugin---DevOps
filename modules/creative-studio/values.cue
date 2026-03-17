@if(!debug)

package main

values: {

	app: "creative-studio"

	image: {
		repository: "demo.goharbor.io/creative-studio/creative-studio"
		digest:     "sha256:f1ff4dca185762db6b5f77c5c2ef847eee2b1bb03ff8bd9bc084cf6e8079ac9b"
		tag: ""
	}

	replicas: 2

	service: {
		port: 5000
		nodePort: 32000
	}

	strategy: {
		maxUnavailable: 1
		maxSurge:       1
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
		class:   "standard"
	}

	secrets: {
		CLOUDINARY_KEY:    "245894724521338"
		CLOUDINARY_SECRET: "Fk1Zd7tl28uRnz76KwAS8LVlfno"
		CLOUDINARY_NAME:   "dztttq7sx"
		CLOUDINARY_URL:    "cloudinary://245894724521338:Fk1Zd7tl28uRnz76KwAS8LVlfno@dztttq7sx"
	}

	message: "creative studio running (prod)"
}
