## Current approach

Previously, I manually uploaded the website files to S3. The Terraform configuration now reads them from the `website/`directory in this project and defines an S3 object for each file.

I added file fingerprinting using `filemd5` so Terraform can detect changed files. The configuration also sets content types based on file extensions.

The current Terraform defines the S3 bucket in `ap-southeast-2`, its website settings, and a public-read policy. CloudFront is not set up yet.

## Deployment run down

## Later automation

For now, the website files come from the local Terraform project directory. Later, I want to connect the version-control workflow to GitHub Actions to automate the development and deployment setup.