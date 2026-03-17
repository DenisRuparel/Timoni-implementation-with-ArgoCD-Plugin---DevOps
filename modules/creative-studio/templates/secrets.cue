package templates

import corev1 "k8s.io/api/core/v1"

#Secret: corev1.#Secret & {
	#config: #Config

	apiVersion: "v1"
	kind: "Secret"

	metadata: {
		name:      #config.metadata.name + "-secrets"
		namespace: #config.metadata.namespace
	}

	type: "Opaque"

	stringData: {
		CLOUDINARY_KEY:    #config.secrets.CLOUDINARY_KEY
		CLOUDINARY_SECRET: #config.secrets.CLOUDINARY_SECRET
		CLOUDINARY_NAME:   #config.secrets.CLOUDINARY_NAME
		CLOUDINARY_URL:    #config.secrets.CLOUDINARY_URL
	}
}
