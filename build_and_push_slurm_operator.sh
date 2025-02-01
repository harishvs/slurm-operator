
image_tag="5.0.0"
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/u1m6g1t5

docker build -t harish/slurm-operator-eks .

docker tag harish/slurm-operator-eks:latest public.ecr.aws/u1m6g1t5/harish/slurm-operator-eks:$image_tag

docker push public.ecr.aws/u1m6g1t5/harish/slurm-operator-eks:$image_tag