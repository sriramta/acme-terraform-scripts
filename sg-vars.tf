variable "cidr_blocks" {
	default 			=	"0.0.0.0/0"
	description			=	"CIDR for subnet group"
}

variable "sg_name" {
	default				=	"rds_sg"
	description			=	"Tag Name for subnetgroup"
}