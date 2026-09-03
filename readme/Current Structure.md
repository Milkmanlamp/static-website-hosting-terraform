(Currently still planning)
## Tech Stack
AWS
React+Bun
Terraform
Github Actions


## Region
`ap-southeast-2`

## VPC
None at the moment

---

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

---

## Website files

Before i had to manually upload them to the bucket so i changed it to just pull the files from a directory in the terraform project for now.
Later i will set it up to intergrate with a version control system to automate the dev setup
## Cloudfront 
Not set up yet — still in the planning phase.

* **Logs** — maybe experiment with them, but **not in prod** (don't want to store them)
* **Functions** — maybe for redirects and security logic; TBD

---

## Security
Might set up a custom error page


## 