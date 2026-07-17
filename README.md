# Javine Tan (@jatansg) | Strategic CS, Enterprise Accounts & Product Architecture Portfolio

Welcome to my technical product-build portfolio.

I build enterprise-grade prototypes that connect customer success, revenue workflows, compliance governance, data privacy, cloud architecture, and B2B/B2B2C platform design across ASEAN.

**These projects are live product architecture prototypes built to demonstrate how commercial strategy, regulated workflows, user experience, and technical systems can come together in working MVPs and product architecture prototypes.**
---

## 🌐 m0-0n.com — Privacy-First B2B2C Optical Commerce & ASEAN Governance

A live B2B2C optical commerce MVP combining eyewear e-commerce, family prescription profile management, saved prescription checkout, optometrist-assisted verification, non-diagnostic vision screening, consent controls, audit trails, anonymised distributor demand forecasting, and ASEAN governance tracking across 10 markets.

Built to explore how optical retail can evolve into a trusted, data-conscious, and compliance-ready digital ecosystem.

Live demo: https://m0-0n.com

## ⚡ LovTurbo Labs — High-Performance Cloud Architecture & Pipeline Optimisation Prototype

An enterprise-grade cloud architecture prototype exploring real-time synchronisation pipelines, caching distribution networks, latency reduction workflows, and operational performance visibility.

Built to demonstrate how infrastructure thinking, performance optimisation, and product UX can be translated into a working technical sandbox.

Live demo: https://lovturbo.com

## 🛡️ AIMM Dev — AI Model Aggregator & Multi-LLM Orchestration Sandbox

An AI model aggregation prototype exploring multi-LLM routing, prompt orchestration, payload handling, token usage visibility, fallback logic, and secure API gateway behaviours.

Built to demonstrate applied AI workflow design and enterprise orchestration patterns.

Live demo: https://aimm.dev/

## 🔐 ChainRecover — Security Workflow & Digital Asset Recovery Simulation

A cybersecurity workflow prototype simulating digital asset recovery journeys, verification milestones, case intake, evidence tracking, and mobile-responsive recovery-status flows.

Built as a security infrastructure case study to explore trust, auditability, user guidance, and structured incident-response UX.

Live demo: https://orecover.com

## 🍜 SGFoodCourt — Singapore Coffee Shop Multi-Vendor Management Prototype

A Singapore-focused foodcourt and coffee shop operations prototype built to simulate multi-vendor stall management, customer ordering journeys, menu visibility, and merchant-side workflow coordination.

The build explores how traditional neighbourhood F&B environments can be translated into a digital operating layer, supporting stall discovery, product/menu browsing, vendor participation, order flow visibility, and basic management logic.

Built as a product architecture sandbox to demonstrate local-market UX thinking, multi-tenant platform design, and operational workflow mapping for Singapore’s foodcourt and coffee shop ecosystem.

Live demo: https://blingfen.com/

## 📱 dylmn.shop — Singapore Lucky Mobile Numbers Storefront Prototype

A Singapore-focused digital storefront prototype for lucky, memorable, and premium-style mobile numbers.

The build explores niche e-commerce flows around number discovery, product listing, customer enquiry, and culturally relevant buying behaviour linked to auspicious or easy-to-remember mobile numbers.

Built as a product architecture sandbox to demonstrate local-market commerce thinking, lightweight marketplace design, product listing UX, and conversion-focused customer journey mapping.

Live demo: https://dylmn.shop/

## 💼 founddao.com — Compensation Intelligence & Salary Estimation Prototype

A compensation intelligence and salary estimation prototype built to explore how professionals can benchmark role value, compensation expectations, seniority positioning, and market-fit signals through a clean self-service experience.

The build simulates a LinkedIn-style salary discovery workflow, combining role-based inputs, market benchmarking concepts, professional positioning, and data-informed career decision support.

Built as a product architecture sandbox to demonstrate HRTech product thinking, career intelligence UX, compensation benchmarking flows, and marketplace-style professional data experiences.

Live demo: https://founddao.com/

## 🏃‍♀️ Run0n — AI-Powered Running Performance Commerce & Distributor Intelligence Prototype

A mobile-first B2B2C running performance commerce prototype combining treadmill bio-burn calibration, multi-profile household tracking, nutrition and recovery insights, simulated voice authentication, simulated eKYC, consent controls, partner-safe analytics, product recommendations, and distributor demand forecasting.

The build explores how consumer training behaviour can become consent-approved aggregate demand intelligence for gyms, wellness retailers, wholesalers, and ASEAN distributors, while keeping identity, privacy, and profile-level consent central to the experience.

Built as a product architecture sandbox to demonstrate AI-native workflow design, privacy-aware B2B2C commerce thinking, subscription packaging, and regional distributor planning logic.

Live demo: https://run0n.com/

---
## 🏗️ Cloud Infrastructure & Orchestration Overview

This repository includes a production-ready, sanitized cloud architecture blueprint designed with a security-first approach to infrastructure management. By separating environment definitions and utilizing immutable infrastructure practices, the setup eliminates common compliance and security configuration risks.

### 🛡️ Infrastructure as Code (IaC) with Terraform
Located in the `/terraform` directory, the configuration builds an isolated network footprint on AWS using industry-standard security principles:
* **Network Isolation**: provisions a dedicated Amazon VPC (`10.0.0.0/16`) to decouple core application workloads from default networks.
* **Tiered Subnets**: maps out structured public subnets (`10.0.1.0/24`) inside strict availability zones to enforce clean routing boundaries.
* **Minimalist Security Posture**: enforces a strict AWS Security Group that blocks non-essential protocol access, allowing entry *only* via encrypted HTTPS (Port 443) while dropping high-risk open-port configurations.

### ☸️ Container Orchestration with Kubernetes
Located in the `/k8s` directory, the manifest defines an immutable pod specification designed to maintain highly resilient runtime application instances:
* **Resource Governance**: sets explicit CPU/Memory request and limit metrics (`256Mi/250m` minimums up to `512Mi/500m` maximums) to prevent container resource exhaustion and stabilize cluster node footprints.
* **Strict Runtime Security**: locks down container privilege boundaries natively within the Kubernetes engine:
  * Disables root privileges (`runAsNonRoot: true` with a designated non-uid-0 user account).
  * Mounting structures run on a static, immutable filesystem layer (`readOnlyRootFilesystem: true`).
  * Explicitly drops system runtime execution elevations (`allowPrivilegeEscalation: false`).

---
### Repository Visibility Note

Some source repositories are kept private where projects involve security workflows, compliance logic, data governance, or commercial product architecture. Live demos and case-study summaries are provided for portfolio review.
