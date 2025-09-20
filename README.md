# 🛡️ Esteira de Segurança Automatizada - DevSecOps

<div align="center">

<img alt="Gitleaks Badge" src="https://img.shields.io/badge/protected%20by-gitleaks-blue">
<img alt="Security Scan" src="https://img.shields.io/badge/security-automated-green">
<img alt="Python" src="https://img.shields.io/badge/python-3.11+-blue">
<img alt="Flask" src="https://img.shields.io/badge/flask-framework-lightgrey">
<img alt="Docker" src="https://img.shields.io/badge/docker-containerized-blue">

**Uma implementação completa de DevSecOps com análise automatizada de segurança**

[📖 Documentação](#-documentação) • [🔒 Segurança](#-ferramentas-de-segurança) • [📊 Pipeline](#-pipeline-de-segurança) • [📈 Relatórios](#-relatórios-e-monitoramento)

</div>

---

## 🎯 **Visão Geral**

Este projeto demonstra uma implementação **robusta e completa** de **DevSecOps** utilizando **GitHub Actions** para automatizar análises de segurança em todas as fases do desenvolvimento. A aplicação de exemplo é uma **API RESTful** construída em **Python/Flask** com foco em práticas de segurança modernas.

### 🏆 **Destaques do Projeto**

- 🔍 **6 ferramentas de segurança** automatizadas (2 SAST + SCA + Secrets + 2 Container/IaC)
- 🚀 **Integração nativa** com GitHub Security
- 🐳 **Container security** com Trivy
- 📦 **Dependências monitoradas** via Dependabot
- 🔐 **Zero secrets** no código-fonte
- ⚡ **Feedback imediato** em Pull Requests

---

## 🎯 **Estratégia DevSecOps**

### 🔄 **Shift-Left Security**
- **Análise contínua** desde o primeiro commit
- **Feedback imediato** em Pull Requests
- **Bloqueio automático** para vulnerabilidades críticas
- **Integração nativa** com ferramentas de desenvolvimento

### 🛡️ **Defesa em Camadas**
- **Múltiplas camadas** de análise de segurança
- **Diferentes perspectivas** (código, dependências, containers, IaC)
- **Redundância inteligente** (Semgrep + CodeQL para SAST)
- **Cobertura completa** do ciclo de desenvolvimento

---

## 🛠️ **Ferramentas de Segurança**

### 🔍 **SAST (Static Application Security Testing)**

#### Semgrep - Análise Rápida e Específica
```yaml
🟢 Semgrep v1.0
├── 📋 p/security-audit     # Auditoria geral de segurança
├── 🔐 p/secrets           # Detecção de credenciais
├── 🎯 p/owasp-top-ten     # Top 10 OWASP
├── 🐍 p/python            # Específico para Python
├── 🌐 p/flask             # Framework Flask
├── 💾 p/sql-injection     # Prevenção SQL Injection
└── ⚡ p/command-injection  # Prevenção Command Injection
```

#### CodeQL - Análise Semântica Profunda
```yaml
🟢 GitHub CodeQL
├── 🧠 Semantic analysis    # Análise semântica do código
├── 🔍 Data flow tracking  # Rastreamento de fluxo de dados
├── 🎯 Security queries    # Queries de segurança específicas
└── 🐍 Python coverage     # Cobertura Python nativa
```

### 📦 **SCA (Software Composition Analysis)**
```yaml
🟢 Dependabot
├── 🐍 Python packages      # requirements.txt
├── 🐳 Docker images       # Dockerfile
└── ⚙️ GitHub Actions      # workflows
```

### 🔐 **Secrets Scanning**
```yaml
🟢 Gitleaks v8.0
├── 🔍 API keys detection
├── 🔑 SSH keys scanning
├── 🎫 JWT tokens analysis
└── 📄 Certificate validation
```

### 🐳 **Container Security**
```yaml
🟢 Trivy Scanner
├── 🔍 Image vulnerabilities
├── 📦 Package scanning
├── 🐧 OS vulnerabilities
└── 📋 Configuration issues
```

### 🏗️ **IaC Security**
```yaml
🟢 Trivy Config
├── 🐳 Dockerfile analysis
├── ⚙️ Kubernetes configs
├── 🔧 YAML configurations
└── 🛡️ Security policies
```

---

## 🔒 **Pipeline de Segurança**

### 📊 **Fluxo Automatizado**

```mermaid
graph TD
    A[💻 Push/PR] --> B[🔍 SAST]
    A --> C[🔐 Secrets]
    A --> D[🐳 Container]
    A --> E[🏗️ IaC]
    
    B --> F[GitHub Security]
    C --> F
    D --> F
    E --> F
    
    F --> G[✅ Report]
    F --> H[🚨 Block Critical]
```

### ⚙️ **Configuração dos Workflows**

| Workflow | Trigger | Duração | Status |
|----------|---------|---------|---------|
| **Security Scan** | Push/PR | ~3-5min | ✅ Ativo |
| **Dependabot** | Semanal | ~1min | ✅ Ativo |
| **Container Build** | Push/PR | ~2-4min | ✅ Ativo |

### 🎯 **Triggers Automáticos**

- 📤 **Push para `main`**: Análise completa
- 🔄 **Pull Requests**: Verificação delta
- 📅 **Agendado**: Scan semanal completo
- 🚨 **Dependências**: Atualizações automáticas

---

## 📊 **Relatórios e Monitoramento**

### 🎯 **GitHub Security Tab**
Todos os resultados são centralizados em:
- **Security Overview** → Visão geral
- **Code Scanning** → Análise SAST
- **Dependabot** → Vulnerabilidades de dependências
- **Secret Scanning** → Credenciais expostas

### 📈 **Métricas de Segurança**

```yaml
📊 Cobertura Atual:
├── 🎯 SAST Coverage: 100%
├── 📦 SCA Coverage: 100% 
├── 🔐 Secrets Scan: 100%
├── 🐳 Container Scan: 100%
└── 🏗️ IaC Scan: 100%
```

### 🚨 **Alertas e Notificações**

- ⚡ **Feedback imediato** em PRs
- 📧 **Emails automáticos** para vulnerabilidades críticas
- 🔔 **Notificações GitHub** em tempo real
- 📊 **Dashboards** integrados

---

## 📋 **Como Utilizar a Esteira de Segurança**

### 🎯 **Para Desenvolvedores - Guia Rápido**

#### 1️⃣ **Primeiro Setup**
```bash
# Clone o repositório
git clone https://github.com/jmessiass/devsecops.git
cd devsecops

# Crie uma branch para seu trabalho
git checkout -b feature/minha-feature

# Faça suas alterações
# ...

# Commit e push
git add .
git commit -m "feat: minha nova feature"
git push origin feature/minha-feature
```

#### 2️⃣ **Criar Pull Request**
1. 🔄 Abra um **Pull Request** no GitHub
2. ⏱️ Aguarde **3-5 minutos** para a análise completa
3. 📊 Verifique os **resultados** na aba "Checks"
4. 🔍 Corrija possíveis **vulnerabilidades** encontradas

#### 3️⃣ **Interpretar Resultados**

| Status | Significado | Ação |
|--------|-------------|------|
| ✅ **All checks passed** | Sem vulnerabilidades | ✅ Pode fazer merge |
| ⚠️ **Some checks failed** | Vulnerabilidades baixas/médias | 🔍 Revisar e corrigir |
| ❌ **Critical issues** | Vulnerabilidades críticas | 🚨 **Bloqueado** - Corrija antes do merge |

### ⚙️ **Configuração GitHub Advanced Security**

#### 🔧 **Habilitando as Funcionalidades**

**Para repositórios privados** (requer GitHub Advanced Security):

1. **Vá para Settings → Security & analysis**
2. **Habilite as seguintes opções:**

```yaml
✅ Dependency graph
✅ Dependabot alerts  
✅ Dependabot security updates
✅ Code scanning (CodeQL)
✅ Secret scanning
✅ Secret scanning push protection
```

#### 🎯 **CodeQL Configuration**
```yaml
# .github/workflows/codeql.yml (GitHub cria automaticamente)
name: "CodeQL"
on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]
  schedule:
    - cron: '0 8 * * 1'  # Segunda-feira 8h

jobs:
  analyze:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        language: [ 'python' ]
```

#### 🔐 **Secret Scanning Rules**
O GitHub detecta automaticamente:
- 🔑 API Keys (AWS, Google, etc.)
- 🎫 Tokens (JWT, OAuth, etc.)
- 🔐 Database URLs
- 📧 Email credentials
- 🔒 Certificates

### 🛠️ **Executando Localmente**

#### 🔍 **Semgrep (SAST)**
```bash
# Instalar Semgrep
pip install semgrep

# Executar análise completa
semgrep --config=p/security-audit \
        --config=p/secrets \
        --config=p/owasp-top-ten \
        --config=p/python \
        --config=p/flask \
        --sarif --output=semgrep.sarif .

# Executar análise rápida
semgrep --config=auto .
```

#### 🔐 **Gitleaks (Secrets)**
```bash
# Instalar Gitleaks
brew install gitleaks  # macOS
# ou
go install github.com/gitleaks/gitleaks/v8@latest

# Scan do repositório completo
gitleaks detect --source . --verbose

# Scan apenas dos novos commits
gitleaks protect --verbose
```

#### 🐳 **Trivy (Container + IaC)**
```bash
# Instalar Trivy
brew install trivy  # macOS
# ou
curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sh -s -- -b /usr/local/bin

# Scan da imagem Docker
docker build -t devsecops-app .
trivy image devsecops-app

# Scan do filesystem
trivy fs .

# Scan de configurações (IaC)
trivy config .

# Gerar relatório SARIF
trivy image --format sarif --output results.sarif devsecops-app
```

#### 📦 **Dependabot (Local Alternative)**
```bash
# Safety - Verificação de dependências Python
pip install safety
safety check

# Pip-audit - Auditoria de dependências
pip install pip-audit
pip-audit

# Verificar dependências desatualizadas
pip list --outdated
```

### 📊 **Acessando Resultados no GitHub**

#### 🎯 **GitHub Security Tab**
1. **Navegue para:** `https://github.com/seu-usuario/seu-repo/security`
2. **Seções disponíveis:**
   - 📊 **Overview** - Resumo geral
   - 🔍 **Code scanning** - Resultados SAST
   - 📦 **Dependabot** - Vulnerabilidades de dependências  
   - 🔐 **Secret scanning** - Credenciais expostas

#### 📈 **Pull Request Checks**
```yaml
📋 Security Scan Status:
├── ✅ SAST (Semgrep)           # ~2 min
├── ✅ Secrets (Gitleaks)       # ~30 sec  
├── ✅ Container (Trivy)        # ~3 min
├── ✅ IaC (Trivy Config)       # ~1 min
└── ✅ Dependencies (Dependabot) # ~1 min
```

#### 🚨 **Tratamento de Alertas**

**Vulnerabilidades Críticas/Altas:**
1. 🔍 **Analise** o alerta detalhadamente
2. 🛠️ **Implemente** a correção sugerida
3. ✅ **Teste** a solução localmente
4. 📤 **Commit** e push da correção
5. ✔️ **Verifique** se o alerta foi resolvido

**False Positives:**
```yaml
# Para Semgrep - .semgrepignore
# Ignorar arquivo específico
path/to/file.py

# Ignorar regra específica
# semgrep:ignore python.flask.security.audit.app-run-debug-true
app.run(debug=True)  # Apenas em desenvolvimento
```

### 🔧 **Customização Avançada**

#### ⚙️ **Configurar Severidade Mínima**
```yaml
# .github/workflows/security.yml
- name: Run Semgrep
  uses: returntocorp/semgrep-action@v1
  with:
    config: p/security-audit
    generateBaseline: true
  env:
    SEMGREP_RULES: |
      rules:
        - id: custom-rule
          severity: ERROR  # INFO, WARNING, ERROR
```

#### 🎯 **Custom Semgrep Rules**
```yaml
# .semgrep.yml
rules:
  - id: flask-debug-true
    message: Flask debug mode enabled in production
    languages: [python]
    severity: ERROR
    pattern: app.run(debug=True)
    paths:
      include:
        - "*.py"
      exclude:
        - "tests/"
```

#### 🔐 **Gitleaks Configuration**
```toml
# .gitleaks.toml
[allowlist]
description = "Allowlist configuration"
files = [
    "^.gitleaks.toml$",
    "(.*?)(jpg|gif|doc|pdf|bin)$"
]
regexes = [
    "example@email.com",  # Email de exemplo
]
```

---

## 📚 **Documentação**

### 📖 **Configurações de Segurança**
- [⚙️ .github/workflows/security.yml](/.github/workflows/security.yml) - Pipeline de segurança
- [🛡️ .github/dependabot.yml](/.github/dependabot.yml) - Configuração Dependabot

### 🎓 **Recursos de Aprendizado**
- [📚 OWASP DevSecOps Guidelines](https://github.com/OWASP/DevSecOpsGuideline)
- [🔍 Semgrep Rules Documentation](https://semgrep.dev/docs/)
- [🛡️ Trivy Security Scanner](https://trivy.dev/)
- [🔒 GitHub Security Features](https://docs.github.com/en/code-security)

---

## 🔧 **Troubleshooting e FAQ**

### ❓ **Problemas Comuns**

#### 🚨 **"Security Scan failed" no PR**

**Problema:** Workflow falha com erro de permissões
```bash
Error: Resource not accessible by integration
```

**Solução:**
1. Vá em **Settings → Actions → General**
2. Em **Workflow permissions**, selecione:
   - ✅ **Read and write permissions**
   - ✅ **Allow GitHub Actions to create and approve pull requests**

#### 🔍 **Semgrep reporta muitos falso positivos**

**Problema:** Muitos alertas irrelevantes

**Solução - Criar `.semgrepignore`:**
```bash
# Ignorar arquivos de teste
tests/
*_test.py
test_*.py

# Ignorar dependências
node_modules/
venv/
.venv/

# Ignorar arquivos gerados
migrations/
*.min.js
```

**Solução - Suprimir regras específicas:**
```python
# semgrep:ignore python.flask.security.audit.app-run-debug-true
app.run(debug=True)  # OK em desenvolvimento
```

#### 🐳 **Trivy falha no build Docker**

**Problema:** Container scan falha
```bash
Error: failed to analyze image
```

**Solução:**
1. **Verifique o Dockerfile:**
```dockerfile
# ❌ Problema comum
FROM python:latest  # Tag indefinida

# ✅ Solução
FROM python:3.11-slim  # Tag específica
```

2. **Build local primeiro:**
```bash
docker build -t test-image .
docker run --rm test-image python --version
```

#### 🔐 **Gitleaks detecta falsos positivos**

**Problema:** Detecta "secrets" que não são reais

**Solução - Configure `.gitleaks.toml`:**
```toml
[allowlist]
description = "Allowlist for false positives"
regexes = [
    '''example\.com''',
    '''fake-key-[a-z0-9]+''',
    '''test-token-\d+''',
]
paths = [
    '''tests/.*''',
    '''docs/.*''',
]
```

#### 📦 **Dependabot cria muitos PRs**

**Problema:** Spam de pull requests

**Solução - Ajustar `.github/dependabot.yml`:**
```yaml
updates:
  - package-ecosystem: "pip"
    directory: "/"
    schedule:
      interval: "monthly"  # Menos frequente
    open-pull-requests-limit: 3  # Limite menor
    target-branch: "develop"  # Branch específica
```

### 💡 **Dicas de Otimização**

#### ⚡ **Acelerar CI/CD**

**1. Cache de dependências:**
```yaml
- name: Cache pip dependencies
  uses: actions/cache@v3
  with:
    path: ~/.cache/pip
    key: ${{ runner.os }}-pip-${{ hashFiles('requirements.txt') }}
```

**2. Execução paralela:**
```yaml
strategy:
  matrix:
    tool: [semgrep, trivy, gitleaks]
  max-parallel: 3
```

**3. Scan incremental:**
```bash
# Apenas arquivos alterados
git diff --name-only HEAD~1 | grep '\.py$' | xargs semgrep
```

#### 🎯 **Configurações Recomendadas**

**Semgrep - Performance:**
```yaml
env:
  SEMGREP_TIMEOUT: 300  # 5 minutos
  SEMGREP_MAX_MEMORY: 4096  # 4GB
```

**Trivy - Configuração otimizada:**
```yaml
- name: Run Trivy
  uses: aquasecurity/trivy-action@master
  with:
    scan-type: 'fs'
    ignore-unfixed: true  # Ignora sem correção
    severity: 'CRITICAL,HIGH'  # Apenas críticas/altas
    exit-code: 1  # Falha em vulnerabilidades
```

#### 🔧 **Configurações de Branch Protection**

**Regras recomendadas:**
```yaml
Settings → Branches → Add rule:
✅ Require a pull request before merging
✅ Require status checks to pass
  ✅ Security Scan / sast-semgrep
  ✅ Security Scan / secrets-scan  
  ✅ Security Scan / container-scan
  ✅ Security Scan / iac-scan
✅ Require branches to be up to date
✅ Restrict pushes that create public pages
```

### 📊 **Monitoramento e Métricas**

#### 📈 **KPIs de Segurança**

| Métrica | Meta | Como Medir |
|---------|------|------------|
| **MTTR** (Mean Time to Remediation) | < 7 dias | GitHub Security Tab |
| **Vulnerabilidades Críticas** | 0 | Security Overview |
| **Cobertura de Testes de Segurança** | 100% | Workflow Status |
| **False Positive Rate** | < 20% | Manual Review |

#### 🎯 **Dashboard Custom**

**GitHub Issues como Dashboard:**
```markdown
## 📊 Security Dashboard - Sprint X

### 🚨 Vulnerabilidades Ativas
- [ ] CVE-2023-XXXX - Critical - Flask dependency
- [ ] Hard-coded API key - High - auth.py:23

### ✅ Resolvidas Esta Sprint  
- [x] SQL Injection - models.py:45
- [x] Weak cryptography - utils.py:12

### 📈 Métricas
- Scans executados: 147
- Vulnerabilidades encontradas: 12
- Tempo médio de correção: 3.2 dias
```

### 🆘 **Suporte e Recursos**

#### 📞 **Quando Pedir Ajuda**

**Escalone para o time de Sec se:**
- 🚨 Vulnerabilidade **CRITICAL** sem correção óbvia
- 🔐 Possível **vazamento de dados** detectado  
- 🤖 **False positives** persistentes (>50% dos alertas)
- ⏱️ **Workflow falha** constantemente (>3 vezes)

#### 📚 **Recursos Úteis**

**Ferramentas de Segurança:**
- 🔍 [Semgrep - Static Analysis](https://semgrep.dev/)
- 🐳 [Trivy Scanner](https://trivy.dev/)
- 🔐 [Gitleaks - Secret Detection](https://gitleaks.io/)
- 🛡️ [GitHub Advanced Security](https://docs.github.com/en/get-started/learning-about-github/about-github-advanced-security)

**Frameworks e Guidelines:**
- 📚 [OWASP DevSecOps Guidelines](https://github.com/OWASP/DevSecOpsGuideline)
- 📖 [OWASP Top 10](https://owasp.org/www-project-top-ten/)
- 🔍 [CWE Database](https://cwe.mitre.org/)
- 🛡️ [NIST Cybersecurity Framework](https://www.nist.gov/cyberframework)
- 📊 [GitHub Security Advisories](https://github.com/advisories)

---

## 🛡️ **Práticas de Segurança Implementadas**

### ✅ **Implementado**
- [x] 🔍 Análise estática de código - SAST (Semgrep + CodeQL)
- [x] 📦 Análise de dependências - SCA (Dependabot + Trivy)
- [x] 🔐 Detecção de secrets (Gitleaks)
- [x] 🐳 Segurança de containers (Trivy)
- [x] 🏗️ Infrastructure as Code scanning (Trivy Config)
- [x] 🚨 Bloqueio automático para vulnerabilidades críticas
- [x] 📊 Integração com GitHub Security
- [x] 🔄 Monitoramento contínuo

### 🔄 **Roadmap Futuro**
- [ ] 🌐 DAST (Dynamic Application Security Testing) - OWASP ZAP
- [ ] 🎯 IAST (Interactive Application Security Testing)
- [ ] 🤖 AI-powered security analysis
- [ ] 📊 Custom security dashboards
- [ ] 🔧 Auto-remediation workflows

---

## 🤝 **Contribuição**

Contribuições são bem-vindas! Por favor:

1. 🍴 **Fork** o projeto
2. 🌿 **Crie** uma branch (`git checkout -b feature/amazing-security`)
3. ✅ **Commit** suas mudanças (`git commit -m 'Add amazing security feature'`)
4. 📤 **Push** para a branch (`git push origin feature/amazing-security`)
5. 🔄 **Abra** um Pull Request

---

## 📜 **Licença**

Este projeto está licenciado sob a [MIT License](LICENSE). 

---

## 🏷️ **Tags**

`devsecops` `security` `automation` `github-actions` `python` `flask` `docker` `sast` `sca` `semgrep` `trivy` `gitleaks` `dependabot`

---

<div align="center">

**Desenvolvido com ❤️ para demonstrar as melhores práticas de DevSecOps**

⭐ **Se este projeto foi útil, considere dar uma estrela!** ⭐

</div>