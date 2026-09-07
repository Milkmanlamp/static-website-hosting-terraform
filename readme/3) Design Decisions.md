
## Bucket choices

Region: `ap-southeast-2`

These are the settings recorded in my notes. They are not a check of a live AWS bucket.

| Setting | Value / intention |
|---|---|
| Name | `my-website-bucket-project65` |
| Encryption | SSE-S3 (default) |
| Transfer acceleration | Off |
| Object lock | Off — might change this |
| Static website hosting | On in the current Terraform setup |
| Storage class | Default for now |
| Versioning | Off — plan to enable later |

I might consider S3 Infrequent Access later, after checking whether it suits the site's access pattern and costs.

## Choices still to make

- **CloudFront logs** — I might experiment with them. For now, I do not plan to retain them in production because I do not want to store them.
- **CloudFront Functions** — I might use them for redirects or security-related request logic; this is still undecided.
- **Monitoring and security** — these details are still to be worked out. AWS WAF and DDoS protection are options I want to explore, not features I have configured for this project.
