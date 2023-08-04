HideMe, LLC
hideme.dev

@prolifichacker

Tools Documentation/Install Docs
* homebrew
    * https://docs.brew.sh/Installation
* docker
    * https://docs.docker.com/get-docker/
* aws
    * https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
    * https://formulae.brew.sh/formula/awscli
* minikube
    * https://minikube.sigs.k8s.io/docs/start/
    - https://minikube.sigs.k8s.io/docs/tutorials/configuring_creds_for_aws_ecr/
* kubectl
    * https://kubernetes.io/docs/tasks/tools/#kubectl
    * https://kubernetes.io/docs/reference/kubectl/cheatsheet/
* docker
    * https://docs.docker.com/get-docker/

Setting up environment 

* Homebrew
    * Install Homebrew
        * export HOMEBREW_NO_INSTALL_FROM_API=1
        * /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

* Docker
    * Install docker desktop
        * https://docs.docker.com/get-docker/

* AWS
    * Install cli
        * brew install awscli
    * Setup Command line or programmatic access
        * aws configure sso
    * login
        * aws sso login --profile my-profile

* Setup minikube
    * Install minikube
        * brew install minikube 
    * Start up minikube
        * minikube start
    * Enable ingress
        * minikube addons enable ingress
    * Setup minikube configure credentials for registry
        * minikube addons configure registry-creds && minikube addons enable registry-creds
        * To verify registry-creds addon is enabled 
            * minikube addons list

* Setup kubectl
    * Install kubectl
        * brew install kubectl
    * Verify kubectl is setup and connected to minikube 
        * kubectl cluster info

* Deploy services
    * kubectl apply -f deployment.yaml -f load-balancer.yaml -f deployment-keycloak.yaml -f deployment-organization-service.yaml -f deployment-mongo.yaml 
    * ./asset-svg-setup.sh && ./org-service-setup.sh
    * minikube tunnel

* Getting Service Endpoint
    * armada-global-mgmt-console
        * localhost:3000    
    * armada-asset-svc
        * localhost:3030
    * armada-organization-svc
        * localhost:8080
    * keycloak admin portal
        * localhost:8090

* Setup keycloak
    * login
        * admin/admin
    * create realm
        * import from the json file, testOrg_realm.json
    * create user
        * Click on Users on the side pane
        * enter a username, email, first and last email
        * password
            * click on the Credentials tab and then set password
            * enter password and disable Temporary

Kubernates pod/services helper commands 

* Check to pods status
    * kubectl get pods
* Check services status
    * kubectl get services
* Restart services
    * armada-global-mgmt-console
        * kubectl rollout restart deployment armada-global-mgmt-console
    * armada-asset-svc
        * kubectl rollout restart deployment armada-asset-svc
    * armada-organization-svc
        * kubectl rollout restart deployment armada-organization-svc

