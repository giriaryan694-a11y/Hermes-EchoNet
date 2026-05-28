# Hermes-EchoNet 🛰️

A custom offensive-security focused personality + configuration layer for [https://github.com/NousResearch/hermes-agent](https://github.com/NousResearch/hermes-agent).

Hermes-EchoNet modifies the default Hermes experience into a more technical, direct, cybersecurity-oriented workflow assistant for ethical hacking, pentesting labs, red-team learning, research, and security experimentation.

---

# ⚔️ Why Hermes-EchoNet?

Default Hermes Agent configurations are designed for broad/general usage and include softer personalities.

For cybersecurity workflows, many users prefer:

* Technical responses
* Security-focused reasoning
* Pentest-oriented workflows
* Direct explanations
* Recon and offensive-security learning assistance
* Faster iteration during labs and research

Hermes-EchoNet provides:

* Custom `SOUL.md`
* Custom `config.yaml`
* Offensive-security oriented personality tuning
* Optimized default model configuration
* Automated sync/bootstrap script

---

# 🧠 What Hermes-EchoNet Changes

## 1. Custom SOUL.md

The included `SOUL.md` changes the behavior/personality style of Hermes Agent into a more cybersecurity-oriented assistant.

This helps make interactions:

* More technical
* More direct
* Better suited for pentest workflows
* Better for recon/research tasks
* Less “soft assistant” style

---

## 2. Custom config.yaml

The provided `config.yaml` changes the default model/provider configuration.

Default model:

```yaml
default: openai/gpt-oss-120b
```

Recommended provider:

* NVIDIA NIM

Why?

* Higher usage limits
* Good performance
* Smooth Hermes experience
* Works well for long technical sessions

You can still change models anytime.

---

# ⚙️ Changing Models

You can modify the default model directly inside:

```yaml
config.yaml
```

Line example:

```yaml
default: openai/gpt-oss-120b
```

Or use Hermes CLI:

```bash
hermes model
```

You can switch:

* Provider
* Model
* API backend
* NVIDIA NIM → OpenAI → others

---

# 🚀 Recommended Setup Flow

## 1. Install Hermes Agent

Official repository:

[https://github.com/NousResearch/hermes-agent](https://github.com/NousResearch/hermes-agent)

Install command:

```bash
curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh | bash
```

---

## 2. Run Hermes Setup

```bash
hermes setup
```

Recommended:

* Use NVIDIA NIM during setup

After testing Hermes:

```bash
exit
```

Then continue with Hermes-EchoNet.

---

# 🛰️ Automatic Hermes-EchoNet Installer

You can automatically sync the custom configuration and SOUL files.

## One-line installer

```bash
curl https://raw.githubusercontent.com/giriaryan694-a11y/Hermes-EchoNet/refs/heads/main/hermes-echonet.sh | bash
```

---

## Manual method (recommended for custom installs)

Download:

```bash
wget https://raw.githubusercontent.com/giriaryan694-a11y/Hermes-EchoNet/refs/heads/main/hermes-echonet.sh
```

Make executable:

```bash
chmod +x hermes-echonet.sh
```

Run:

```bash
./hermes-echonet.sh
```

---

# 🧩 Manual Configuration Method

You can also manually replace the files.

## SOUL.md

Backup your original file and replace with:

[https://github.com/giriaryan694-a11y/Hermes-EchoNet/blob/main/SOUL.md](https://github.com/giriaryan694-a11y/Hermes-EchoNet/blob/main/SOUL.md)

---

## config.yaml

Backup your original config and replace with:

[https://github.com/giriaryan694-a11y/Hermes-EchoNet/blob/main/config.yaml](https://github.com/giriaryan694-a11y/Hermes-EchoNet/blob/main/config.yaml)

---

# ❓ Common Questions

## Is NVIDIA NIM safe to use for pentesting, CTFs, or labs?

Yes — using NVIDIA NIM for:

* CTFs
* Local labs
* Training environments
* Research
* Ethical hacking practice

is generally fine.

For authorized pentests inside companies or private organizations, you should still communicate clearly with the client/team because requests may pass through external AI infrastructure.

Things to discuss with the organization:

* AI-generated content policies
* Logging/privacy considerations
* Whether external AI services are allowed
* Internal compliance requirements

NVIDIA NIM is a trusted platform, but professional pentests should always follow company rules and authorization scope.

---

# ⚠️ Important Notes

* Hermes-EchoNet is intended for:

  * Ethical hacking
  * Security labs
  * Pentest learning
  * Research environments
  * CTF workflows

* Always follow laws and platform rules.

* This project modifies behavior/personality configuration only.

* Hermes-EchoNet is NOT affiliated with Nous Research.

---

# 🛠️ Features

* Cybersecurity-oriented personality tuning
* Offensive-security workflow optimization
* NVIDIA NIM optimized defaults
* Automated configuration sync
* Backup support for existing configs
* Custom install path support
* Fast bootstrap setup

---

# 📦 Repository

[https://github.com/giriaryan694-a11y/Hermes-EchoNet](https://github.com/giriaryan694-a11y/Hermes-EchoNet)

---

# 👨‍💻 Author

Written By Aryan Giri

GitHub:

[https://github.com/giriaryan694-a11y](https://github.com/giriaryan694-a11y)
