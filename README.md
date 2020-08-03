# drone-kubectl

This repo is a fork of [sinlead/drone-kubectl](https://github.com/sinlead/drone-kubectl).

This [Drone](https://drone.io/) plugin allows you to use `kubectl` without messing around with the authentication

## Usage

```yaml
# drone 1.0 syntax
kind: pipeline
name: deploy

steps:
  - name: deploy
    image: kradalby/drone-kubectl
    settings:
      kubernetes_server:
        from_secret: k8s_server
      kubernetes_cert:
        from_secret: k8s_cert
      kubernetes_token:
        from_secret: k8s_token
    commands:
      - kubectl create -f job_foo.yaml
      - kubectl wait --for=condition=complete -f job_foo.yaml
```

### Special thanks

Inspired by [drone-kubernetes](https://github.com/honestbee/drone-kubernetes).
