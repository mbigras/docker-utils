provider "aws" {
  shared_credentials_file = "~/.aws/credentials"
  profile = "default"
  region = "us-west-1"
}

resource "aws_iam_user" "terraform" {
  name = "terraform"
}

resource "aws_iam_access_key" "terraform" {
  user = "${aws_iam_user.terraform.name}"
}

resource "aws_iam_user_group_membership" "terraform" {
  user = "${aws_iam_user.terraform.name}"

  groups = [
    "root",
  ]
}
