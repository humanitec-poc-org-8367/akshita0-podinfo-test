output "cluster_name" {
  value = aws_eks_cluster.this.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.this.endpoint
}

output "cluster_ca_certificate" {
  value = aws_eks_cluster.this.certificate_authority[0].data
}
output "cluster_id" {
  value = aws_eks_cluster.this.id
}
output "bucket" {
  value = module.aws_s3.s3_bucket_bucket_domain_name
}
