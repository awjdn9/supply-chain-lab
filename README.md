# supply-chain-lab

# Software Supply Chain Security Lab: Build, SBOM, and Sign

This plan outlines the steps to create a simple project that demonstrates building a container image, generating a Software Bill of Materials (SBOM) for that image, and digitally signing the image using Cosign and Sigstore, all automated with GitHub Actions.

**Goal:** To understand the basic workflow of building a container, documenting its components with an SBOM, and verifying its origin and integrity through digital signing.

**Concepts Covered:**

* Container Image Building (Dockerfile)

* Software Bill of Materials (SBOM) Generation (Syft)

* Digital Signing (Cosign/Sigstore)

* CI/CD Automation (GitHub Actions)

* Relationship to Vulnerability Management (CVEs - conceptual link)

### Step 1: Set up the GitHub Repository


### Step 2: Create a Simple Application


### Step 3: Create a Dockerfile


### Step 4: Choose and Understand the SBOM Tool (Syft)

We've chosen **Syft** because it's easy to use and specifically designed for container images and filesystems. Syft analyzes your software and generates an SBOM in various formats.

How Syft Works (Conceptually):

Imagine Syft as a tool that "looks inside" your container image or file system. It identifies all the installed packages, libraries, and dependencies by examining package managers (like apt, pip, npm, etc.) and other common locations. It then collects information about these components (name, version, license, supplier, etc.) and formats it into an SBOM document.

You don't need to install Syft on your Ubuntu desktop for this lab, as we'll run it directly within the GitHub Actions workflow using a container image.

### Step 5: Integrate SBOM Generation with GitHub Actions


### Step 6: Integrate Digital Signing with Cosign/Sigstore


### Step 7: Running the Workflow and Reviewing Results



You have successfully set up a lab environment to:

    Build a simple container image using a Dockerfile.
    Automate the build process using GitHub Actions.
    Generate an SBOM for your image using Syft within the workflow.
    Digitally sign your container image using Cosign and Sigstore's keyless signing in the workflow.
    Verify the signature of the image locally.

This project provides a practical understanding of key software supply chain security concepts and how they can be integrated into an automated workflow. You can now explore adding vulnerability scanning, enforcing policies based on SBOMs, and learning more about different signing methods and SBOM formats.

Let me know if you'd like to expand on any of these steps or add more features to your lab!