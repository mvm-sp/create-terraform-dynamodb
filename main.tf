provider "aws" {
  region = "us-west-2"  # specify your region
}

resource "aws_dynamodb_table" "tutorials" {
  name         = "tutorials"
  billing_mode = "PAY_PER_REQUEST"  # or PROVISIONED with read/write capacity units

  attribute {
    name = "id"
    type = "N"  # Number type for the id
  }

  hash_key = "id"

  attribute {
    name = "title"
    type = "S"  # String type for the title
  }

  attribute {
    name = "description"
    type = "S"  # String type for the description
  }

  attribute {
    name = "published"
    type = "N"  # Number type for the published (use 0 or 1)
  }

  attribute {
    name = "createdAt"
    type = "S"  # String type for the createdAt (store ISO 8601 format)
  }

  attribute {
    name = "updatedAt"
    type = "S"  # String type for the updatedAt (store ISO 8601 format)
  }

  tags = {
    Name = "tutorials"
  }
}
