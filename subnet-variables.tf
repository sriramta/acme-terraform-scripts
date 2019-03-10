variable "subnet_1_cidr" {
	default			=	"10.0.1.0/24"
	description		=	"az1"
}

variable "subnet_2_cidr" {
	default			=	"10.0.2.0/24"
	description		=	"az2 - private"
}

variable "az_1" {
	default			=	"ap-southeast-1a"
	description		=	"az1"
}

variable "az_2" {
	default			=	"ap-southeast-1b"
	description		=	"az2 - the private one"
}