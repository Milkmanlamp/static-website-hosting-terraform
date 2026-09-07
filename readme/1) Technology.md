## Tech Stack

- **AWS S3** — stores the static website files.
- **AWS CloudFront (planned)** — serves the files through edge locations and caches content closer to users.
- **React + Bun** — the stack listed for the website. Terraform uploads the built static files from `website/`.
- **Terraform** — defines the S3 setup and uploads website files, using file fingerprints to detect changes.
- **GitHub Actions (planned)** — intended for automating the development and deployment workflow later. No workflow is included yet.
