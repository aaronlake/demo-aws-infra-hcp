output "vpc_cidr_block" {
  value = module.vpc.vpc_cidr_block
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_owner_id" {
  value = module.vpc.vpc_owner_id
}

output "database_subnet_group_name" {
  value = module.vpc.database_subnet_group_name
}

output "public_route_table_ids" {
  value = module.vpc.public_route_table_ids
}

output "private_route_table_ids" {
  value = module.vpc.private_route_table_ids
}

output "database_route_table_ids" {
  value = module.vpc.database_route_table_ids
}

output "private_subnets_cidr_blocks" {
  value = module.vpc.private_subnets_cidr_blocks
}
