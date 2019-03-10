resource "aws_db_instance" "acme-db" {
	depends_on					=	["aws_security_group.acmedb-sg"]
	identifier					=	"acmedb-rds"
	allocated_storage			=	"20"
	engine						=	"postgres"
	engine_version				=	"9.6.8"
	instance_class				=	"db.t2.micro"
	name						=	"acmedb"
	username					=	"acmedb"
	password					=	"acmedbpass"
	vpc_security_group_ids		=	["${aws_security_group.acmedb-sg.id}"]
	db_subnet_group_name		=	"${aws_db_subnet_group.acmesubnet.id}"
	skip_final_snapshot 		= 	true

}

resource "aws_db_subnet_group" "acmesubnet" {
	name 						=	"acme_subnet_group"
	description					=	"our main group of subnet"
	subnet_ids					=	["${aws_subnet.subnet_1.id}", "${aws_subnet.subnet_2.id}"]
}