# Implementação de Segurança na Pipeline

Esta documentação reune informações sobre as ferramentas de segurança automatizadas na pipeline de integração contínua para verificar a segurança do código-fonte e da aplicação. Utilizo as ferramentas Bandit para análise estática de segurança (SAST) e Nuclei para análise dinâmica de segurança (DAST).

## Finalidade

O objetivo deste fluxo é garantir a detecção proativa de possíveis vulnerabilidades no código e na aplicação durante o processo de integração contínua. As ferramentas são integradas na pipeline para identificar problemas de segurança em um estágio inicial do desenvolvimento, reduzindo assim o risco de implantações com falhas de segurança.

## Processo de Implementação

### Bandit (SAST)
Bandit é uma ferramenta de análise estática de segurança para código Python. Ele é usado para identificar problemas de segurança no código-fonte. Na pipeline, o Bandit é configurado para:

- Realizar análise estática do código Python presente no diretório atual.
- Identificar possíveis problemas de segurança, como vulnerabilidades de execução de comandos, vulnerabilidades de importação de módulos inseguros, entre outros.

### OWASP ZAP (DAST)
OWASP ZAP é uma ferramenta de análise dinâmica de segurança que permite realizar verificações de segurança em aplicativos da web. Na pipeline, o OWASP ZAP é configurado para:

- Realizar varreduras dinâmicas na aplicação web.
- Identificar possíveis vulnerabilidades, como injeção de SQL, cross-site scripting (XSS), entre outros.

## Como Executar

Para executar as verificações de segurança localmente:
Garanta que a aplicação esteja de pé na porta 5000  `docker run -it --rm --publish 5000:5000 frolvlad/flask-restplus-server-example`.

1. **Bandit (SAST):**
   - Instale o Bandit usando `pip3 install bandit`.
   - Execute `bandit -r . -f json -o sast-results.json` no terminal para analisar o código Python e salvar os resultados em sast-results.json no formato json.

2. **OWASP ZAP (DAST):**
   - Baixe e configure o OWASP ZAP para sua aplicação.
   - Execute os comandos específicos do OWASP ZAP para varrer sua aplicação web.

## Observações
- Para testar o scan na pipeline, basta realizar as alterações no código e fazer push na branch main, aguardar a finalização do job security_scan, após finalizado os resultados são salvos nos artefatos da pipeline. 
