![[Pasted image 20260905181027.png]]

## How the planned setup works

The diagram shows the direction I want to take with the hosting setup. It is not a picture of a completed deployment.

1. A user requests a page through CloudFront.
2. CloudFront can serve cached content from an edge location closer to the user if it is cached. This is useful for repeated requests, especially from users far from my S3 region.
3. When CloudFront needs a file from S3, it uses Origin Access Control (OAC) to access the private bucket.

S3 stores the static files in `ap-southeast-2`. CloudFront's edge locations are spread across different locations to bring cached content closer to users.

Route 53 appears in the existing diagram as a possible DNS layer for a domain. It would point users to CloudFront; it does not deliver the website files itself. This first project's scope remains S3 and CloudFront.

## Current setup versus the diagram

CloudFront and OAC are not configured yet. The current Terraform uses S3 static website hosting with a public-read bucket policy. Moving to the private-bucket design will require CloudFront to use the S3 bucket origin with OAC, rather than the S3 website endpoint.

This setup serves static files only. A backend and routing to other servers are ideas for a later project.
