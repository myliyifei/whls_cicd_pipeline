output "flask_url" {
  description = "flask app url"
  value       = "${aws_elb.flask-app1-elb.dns_name}"
}