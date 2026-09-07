
## What is this project?

This project is here to help me develop my understanding of website-hosting options in AWS, how I can expand this architecture in future projects, and how the features and costs change with each design. This is my first small portfolio project in a planned series about hosting websites on AWS.

For this first version, I wanted to start with a basic, inexpensive, and secure way to host a static website. The scope is S3 and CloudFront, with CloudFront still in the planning phase.

I am starting with a static webpage I coded for my old freelance full-stack business. I will add a backend in a later project.

## Current progress

The Terraform configuration creates an S3 website bucket and uploads files from the project's `website/` directory. I previously uploaded these files manually and have added file fingerprinting so Terraform can check whether they have changed.

The current configuration allows public reads from S3. The planned setup will use CloudFront in front of a private bucket. The documentation describes the configuration and plans; it does not confirm a successful live deployment or testing.
