## other options

Vercel and Cloudflare are alternatives with great free plans. They may be a better fit for a simple website if I am not using other AWS services and want a easier option.

For this project, learning AWS is part of the goal. Hosting here also gives me a way to explore integration with other AWS services later, including monitoring, data management, and security.

## later options to add

Another option is to keep static pages and images in S3 while running dynamic parts on other servers. This could avoid making the backend servers deliver all the basic static files.

The aim would be for it to feel like one website, with CloudFront routing requests to the appropriate origin. Route 53 could provide DNS for the domain. I will explore the server setup and routing in a later stage; they are outside this first S3 and CloudFront project.