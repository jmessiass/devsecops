# Implementação de Segurança na Pipeline
<img alt="gitleaks badge" src="https://img.shields.io/badge/protected%20by-gitleaks-blue">

Esta documentação reune informações sobre as ferramentas de segurança que estão sendo usadas na pipeline de integração contínua via GitHub Actions para verificar a segurança do código-fonte e da aplicação. É realizado os seguintes tipos de testes de forma automatizada (SAST, SCA, DAST e Secrets Scan) e em breve IaC Scan. O projeto utilizado para os testes é uma API construida em Python utilizando o framework Flask.

## Diagrama de arquitetura
![DevSecOps](/devsecops.png "DevSecOps")

## Finalidade
O objetivo deste fluxo é garantir a detecção proativa de possíveis vulnerabilidades no código e na aplicação durante o processo de integração contínua. As ferramentas são integradas na pipeline para identificar problemas de segurança em um estágio inicial do desenvolvimento, reduzindo assim o risco de implantações com falhas de segurança.

## Processo de Implementação

O arquivo de workflow está em ```/.github/workflows/security.yml```

### Semgrep (SAST)
Semgrep é uma ferramenta de análise estática rápida e de código aberto para encontrar bugs, detectar vulnerabilidades em dependências de terceiros e impor padrões de código.

### Dependecy Check (SCA)
Dependency-Check é uma ferramenta de análise de composição de software (SCA) que tenta detectar vulnerabilidades divulgadas publicamente contidas nas dependências de um projeto.

### OWASP ZAP (DAST)
OWASP ZAP é uma ferramenta de análise dinâmica de segurança que permite realizar verificações de segurança em aplicativos da web. Na pipeline, o ZAP é configurado para.

### Gitleaks (Secrets Scan)
Gileaks é um scanner de segredos rápido, leve, portátil e de código aberto para repositórios, arquivos e diretórios git. 

## Relatórios com os resultados
Para acessar os resultados de segurança basta acessar as actions do projeto, clicar em algum job que tenha executado com sucesso, rolar a página para baixo e verá os artefatos com os resultados de todos os testes executados.

### Referências
- https://github.com/OWASP/DevSecOpsGuideline
- https://semgrep.dev/
- https://owasp.org/www-project-dependency-check/
- https://www.zaproxy.org/
- https://gitleaks.io/
- https://trivy.dev/
- https://www.defectdojo.org/
