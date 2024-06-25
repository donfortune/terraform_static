resource "aws_iam_role" "cloudfront_access" {
  name = "CloudFrontAccessRole"
  assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [{
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudfront.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_policy" "cloudfront_access_policy" {
  name   = "CloudFrontAccessPolicy"
  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Action": [
          "s3:GetObject"
        ],
        "Resource": [
          "${module.s3_bucket.arn}/*"
        ]
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "cloudfront_access_attachment" {
  role       = aws_iam_role.cloudfront_access.name
  policy_arn = aws_iam_policy.cloudfront_access_policy.arn
}
