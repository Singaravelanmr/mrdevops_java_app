access_key = "AKIAU63ZUQB47TECI5RV"
secret_key = "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"
rolename = "velans-eks-demo-role1"
region = "ap-south-1"
cluster_name = "velans-eks-cluster1"
kubernetes_version = 1.26
 
 
node_role_name = "velans-eks_node_role1"
node_group_name = "velans-node-group1"
instance_types = ["t2.medium"]
ami_type = "AL2_x86_64"
capacity_type = "ON_DEMAND"
disk_size = 20

cidr_block_igw = "0.0.0.0/0"
cidr_block = "11.0.0.0/16"
sub-a_cidr_block = "11.0.1.0/24"
subnet_az1 = "ap-south-1a"  
sub-b_cidr_block = "11.0.2.0/24"
subnet_az2 = "ap-south-1b" 
sub-c_cidr_block = "11.0.3.0/24"
subnet_az3 = "ap-south-1c" 


velans_sg = "velans_sg"
