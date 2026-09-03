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

## CloudWatch
Not set up yet — still in the planning phase.

* **Logs** — maybe experiment with them, but **not in prod** (don't want to store them)
* **Functions** — maybe for redirects and security logic; TBD

---

## Security
Might set up a custom error page
