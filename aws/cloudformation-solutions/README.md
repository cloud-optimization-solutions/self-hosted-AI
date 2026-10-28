# Cloud Optimization Solutions — CloudFormation Solutions

A collection of independent AWS CloudFormation projects. **Each project has its own README, template, and architecture diagram.** You can deploy a single project without deploying the rest.

## Project catalog

| Project | What it deploys | Documentation |
| --- | --- | --- |
| [01 — Self-Hosted AI Sandbox](projects/01-self-hosted-ai-sandbox/) | Ollama GPU, LibreChat, n8n, VPC, ALB, and SSM | [Read project README](projects/01-self-hosted-ai-sandbox/README.md) |

More projects will be added independently.

## Download one project

Open the project's folder, then download its `template.yaml` using **Raw → Save As**. For an entire folder, use the GitHub CLI with sparse checkout or the included `scripts/download-project.sh` helper (requires `git`). You do not need to clone the whole repository.

```bash
bash scripts/download-project.sh 01-self-hosted-ai-sandbox
```

## Safety

Review all templates and their IAM permissions before deploying. Deployments create billable AWS resources. Examples are supplied as-is; test in a nonproduction AWS account first.

## Licensing

Add your chosen LICENSE file before publishing. No license is included in this starter package.
