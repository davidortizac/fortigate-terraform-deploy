
output "FGTPublicIP" {
  value = aws_eip.FGTPublicIP.public_ip
}
output "FGTPublicFQDN" {
value = join("", tolist(["https://", "${aws_eip.FGTPublicIP.public_dns}", ":", "${var.adminsport}"]))
}
output "Username" {
  value = "admin"
}

output "Password" {
  value = aws_instance.fgtvm.id
}

