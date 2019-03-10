resource "aws_security_group" "acmedb-sg" {
	name			=		"${var.sg_name}"
	description		=		"Allow all incoming traffic"
	vpc_id			=		"${aws_vpc.acme-sg-vpc.id}"

	ingress			{
		from_port		=	0
		to_port			=	65535
		protocol		=	"TCP"
		cidr_blocks		=	["${var.cidr_blocks}"]
	}

	egress {
		from_port		=	0
		to_port			=	0
		protocol		=	"-1"
		cidr_blocks		=	["0.0.0.0/0"]
	}

	tags	{
		Name 	= "${var.sg_name}"
	}
}