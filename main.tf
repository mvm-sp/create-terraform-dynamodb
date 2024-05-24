provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_dynamodb_table" "tutorials" {
  name         = "tutorials"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "id"
    type = "N"
  }

  attribute {
    name = "title"
    type = "S"
  }

  attribute {
    name = "description"
    type = "S"
  }

  attribute {
    name = "published"
    type = "N"
  }

  attribute {
    name = "createdAt"
    type = "S"
  }

  attribute {
    name = "updatedAt"
    type = "S"
  }

  hash_key = "id"

  global_secondary_index {
    name            = "title-index"
    hash_key        = "title"
    projection_type = "ALL"
  }

  global_secondary_index {
    name            = "description-index"
    hash_key        = "description"
    projection_type = "ALL"
  }

  global_secondary_index {
    name            = "published-index"
    hash_key        = "published"
    projection_type = "ALL"
  }

  global_secondary_index {
    name            = "createdAt-index"
    hash_key        = "createdAt"
    projection_type = "ALL"
  }

  global_secondary_index {
    name            = "updatedAt-index"
    hash_key        = "updatedAt"
    projection_type = "ALL"
  }

  tags = {
    Name = "tutorials"
  }
}
