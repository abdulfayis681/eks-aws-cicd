curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/installapt install unzip
apt install unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
./aws/install -i /usr/local/aws-cli -b /usr/local/bin
aws --version
curl -o kubectl https://s3.us-west-2.amazonaws.com/amazon-eks/1.21.2/2021-07-05/bin/linux/amd64/kubectl
openssl sha1 -sha256 kubectl
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc
kubectl version --short --client
curl -o aws-iam-authenticator https://s3.us-west-2.amazonaws.com/amazon-eks/1.21.2/2021-07-05/bin/linux/arm64/aws-iam-authenticator
openssl sha1 -sha256 aws-iam-authenticator
chmod +x ./aws-iam-authenticator
mkdir -p $HOME/bin && cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator && export PATH=$PATH:$HOME/bin
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc
aws-iam-authenticator help
curl -o aws-iam-authenticator.sha256 https://s3.us-west-2.amazonaws.com/amazon-eks/1.21.2/2021-07-05/bin/linux/amd64/aws-iam-authenticator.sha256
chmod +x ./aws-iam-authenticator
mkdir -p $HOME/bin && cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator && export PATH=$PATH:$HOME/bin
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc
aws-iam-authenticator help
curl -o aws-iam-authenticator https://s3.us-west-2.amazonaws.com/amazon-eks/1.21.2/2021-07-05/bin/linux/amd64/aws-iam-authenticator
chmod +x ./aws-iam-authenticator
mkdir -p $HOME/bin && cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator && export PATH=$PATH:$HOME/bin
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc
aws-iam-authenticator help
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version
aws configure
vim cluster.yaml
aws configure
eksctl create cluster -f cluster.yaml
aws configure
vim cluster.yaml 
eksctl create cluster -f cluster.yaml
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker
vim Dockerfile
vim package.json
ls
vim index.js
ls
docker image build -t cicd-demo:v1 . 
docker run -d --name cicd-demo -p 3000:3000 cicd-demo:v1
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 310071380962.dkr.ecr.us-east-1.amazonaws.com
docker build -t cicd .
docker tag cicd:latest 310071380962.dkr.ecr.us-east-1.amazonaws.com/cicd:latest
docker push 310071380962.dkr.ecr.us-east-1.amazonaws.com/cicd:latest
vim deployment.yaml
vim service.yaml
kubectl apply -f deployment.yaml 
kubectl apply -f service.yaml
kubectl get deployment
kubectl get pods
ls
vim aws-auth.yaml
ls
vim buildspec_eks.yml
vim create_iam_role.sh
vim prereqs.sh
chmod +x create_iam_role.sh 
sh create_iam_role.sh 
kubectl apply -f aws-auth.yaml
ekctl create iamidentitymapping --cluster cicd-demo --arn arn:aws:iam::310071380962:role/CodeBuildKubectlRole --group system:masters --username CodeBuildKubectlRole
eksctl create iamidentitymapping --cluster cicd-demo --arn arn:aws:iam::310071380962:role/CodeBuildKubectlRole --group system:masters --username CodeBuildKubectlRole
vim aws-auth.yaml 
kubectl apply -f aws-auth.yaml
eksctl create iamidentitymapping --cluster cicd-demo --arn arn:aws:iam::310071380962:role/CodeBuildKubectlRole --group system:masters --username CodeBuildKubectlRole
ls
vim deployment.yaml 
sudo apt-get update && sudo apt-get install yamllint -y
