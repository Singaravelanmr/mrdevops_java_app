resource "aws_iam_role" "velans_demo" {
  name = var.rolename
 
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}


resource "aws_iam_role_policy_attachment" "demo-AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.velans_demo.name
}

resource "aws_eks_cluster" "velans_cluster" {
  name     = var.cluster_name
  role_arn = aws_iam_role.velans_demo.arn
  version  = var.kubernetes_version

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = var.security_group_ids
  }

  tags = var.tags

  depends_on = [aws_iam_role_policy_attachment.demo-AmazonEKSClusterPolicy]
}