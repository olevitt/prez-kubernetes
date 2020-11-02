## Demo

<!-- .slide: class="slide" -->

---

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: app
spec:
  replicas: 1
  selector:
    matchLabels:
      app: app
  template:
    metadata:
      labels:
        app: app
    spec:
      containers:
        - name: app
          image: etherpad/etherpad
```

 <!-- .element: class="stretch" -->

---

```yaml
apiVersion: v1
kind: Service
metadata:
  name: app
spec:
  ports:
    - name: http
      targetPort: 9001
      port: 80
  selector:
    app: app
```

 <!-- .element: class="stretch" -->

---

```yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: app
  annotations:
    kubernetes.io/ingress.class: nginx
spec:
  tls:
    - hosts:
        - seminaire.dev.insee.io
  rules:
    - host: seminaire.dev.insee.io
      http:
        paths:
          - path: /
            backend:
              serviceName: app
              servicePort: http
```

 <!-- .element: class="stretch" -->
