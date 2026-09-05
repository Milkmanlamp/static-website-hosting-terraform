(Currently still planning)

## What is this project? 

This project is here to help me develop my understanding of website-hosting options in AWS, how I can expand this architecture in future projects, and how the features and costs change with each design. As this is the first iteration of the hosting setup, I wanted to start with the most basic, inexpensive, and secure way to host a website using AWS infrastructure. 

**keep in mind ill be starting with a static webpage that I have coded up when making my old businesses website for freelance full stack work. ill add a backend to a later project**


## Region

`ap-southeast-2`

## Bucket

| Setting | Value |
|---|---|
| Name | `my-website-bucket-project65` |
| Encryption | SSE-S3 (default) |
| Transfer acceleration | Off |
| Object lock | Off *(might change this)* |
| Static website hosting | On |
| Storage class | Default for now |
| Versioning | Off *(enable later)* |

> [!note] Storage class
> Could use **S3 Infrequent Access** later.

## Website files

Previously, I had to manually upload the files to the bucket, so I changed the setup to pull them from a directory in the Terraform project for now.

Later, I will integrate the project with a version control system to automate the development setup.

- I added file fingerprinting to allow Terraform to check whether the files have changed.

## CloudFront

Not set up yet—it is still in the planning phase.

- **Logs** — I might experiment with them, but not in production because I do not want to store them.
- **Functions** — I might use them for redirects and security logic; this is still to be decided.

## Monitoring Options


## Security



