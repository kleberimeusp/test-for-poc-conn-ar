
# Desafio de Arquitetura de Software

## Introdução

Este documento apresenta as soluções propostas para a arquitetura de uma plataforma que integra com a rede do Sistema Financeiro Brasileiro (RSFN), focando especificamente nos sistemas SPI e STR. Ele também aborda os tópicos de tecnologia, arquitetura de software, DevOps e gerenciamento de projetos.

---

## Stack Tecnológico

### Linguagens de Programação:
- **Java**: Para o desenvolvimento do backend, devido ao seu suporte robusto para sistemas financeiros e alta escalabilidade.
- **Python**: Para tarefas de script, integração de dados e automação.
- **JavaScript/TypeScript**: Para o gateway de APIs e interfaces do lado cliente.

### Tecnologias e Padrões de API:
- **REST**: Para APIs externas, fornecendo simplicidade e compatibilidade.
- **gRPC**: Para comunicação interna entre microsserviços, garantindo alto desempenho e segurança tipada.
- **OAuth2/OpenID Connect**: Para autenticação e autorização seguras.

### Frameworks e Bibliotecas Principais:
- **Spring Boot**: Para microsserviços backend, garantindo desenvolvimento rápido e integração com Java.
- **FastAPI**: Para serviços baseados em Python que exigem ciclos de desenvolvimento rápidos.
- **Node.js**: Para lidar com serviços de notificação em tempo real.
- **Swagger/OpenAPI**: Para documentação e testes de APIs.

### Serviços de Suporte:
- **PostgreSQL**: Para armazenamento de dados relacionais com conformidade ACID.
- **Redis**: Para cache e gerenciamento de sessões.
- **Kafka**: Para streaming de eventos e intermediação de mensagens.
- **Prometheus & Grafana**: Para monitoramento e observabilidade.
- **AWS S3 ou GCP Storage**: Para armazenamento seguro de arquivos e backups.
- **Elastic Stack (ELK)**: Para logging centralizado.

---

## Arquitetura de Software

### Serviços a Desenvolver:

#### 1. **Serviço de Integração SPI:**
Responsável pela comunicação com o sistema SPI. Este serviço gerenciará o processamento de pagamentos em tempo real, garantindo conformidade com os protocolos do SPI. Ele incluirá uma fila para lidar com volumes altos de transações e tentativas de retransmissão para falhas.

#### 2. **Serviço de Integração STR:**
Lida com a comunicação com o sistema STR para liquidações de alto valor. Este serviço se concentrará em trocas de mensagens seguras e confiáveis, implementando protocolos de criptografia e validação exigidos pelo RSFN.

#### 3. **Gateway de API:**
Atua como ponto de entrada para aplicativos clientes, padronizando e abstraindo o acesso aos serviços SPI e STR. Incluirá limitação de taxa, autenticação e logging.

#### 4. **Serviço de Autenticação e Autorização:**
Fornece autenticação baseada em OAuth2 e controle de acesso baseado em função (RBAC) para a plataforma.

#### 5. **Serviço de Auditoria e Logging:**
Acompanha todas as transações e eventos do sistema para garantir conformidade e permitir rastreabilidade.

#### 6. **Serviço de Notificação:**
Envia notificações (por exemplo, via e-mail ou SMS) sobre status de transações ou erros para as partes interessadas relevantes.

---

## DevOps

### Pipeline DevOps:
1. **Commit de Código:** Os desenvolvedores enviam código para o sistema de controle de versão.
2. **Build:** A integração contínua dispara um processo de build.
3. **Teste:** Testes automatizados de unidade, integração e aceitação são executados.
4. **Varredura de Segurança:** Análise de código estática e dinâmica.
5. **Implantação:** Implantação contínua em ambientes de staging e produção.
6. **Monitoramento:** Monitoramento e alertas pós-implantação.

### Recomendações:
- **Sistema de Controle de Versão:** GitHub ou GitLab.
- **Estratégia de Branching:** GitFlow para gerenciar branches de feature, release e hotfix.
- **Políticas de Revisão de Código:**
  - PRs exigem pelo menos duas aprovações.
  - Verificações automatizadas para testes e linters.
  - Sessões regulares de revisão de código para compartilhamento de conhecimento.

---

## Gerenciamento de Projetos

### Metodologia:
- **Ágil (Scrum):** Adequado para desenvolvimento iterativo e requisitos dinâmicos.

### Ferramentas:
- **Jira:** Para rastreamento de tarefas e planejamento de sprints.
- **Confluence:** Para documentação.
- **Slack:** Para comunicação da equipe.

### Definição e Rastreamento de Tarefas:
- **Criação de Backlog:** Definir épicos, histórias e tarefas.
- **Planejamento de Sprint:** Atribuir prioridades e pontos de história.
- **Rastreamento:** Monitorar progresso via painéis do Jira.

### Métricas a Acompanhar:
- **Métricas de Equipe:**
  - Velocidade (pontos de história concluídos por sprint).
  - Tempo de ciclo (tempo para concluir uma tarefa).
- **Métricas Individuais:**
  - Qualidade do código (medida por linting e cobertura de testes).
  - Revisões de pull request (quantidade e qualidade).

### Papéis e Habilidades:
- **Líder Técnico (1):** Supervisiona a arquitetura e decisões técnicas.
- **Desenvolvedores Backend (5):** Experientes em Java, Spring Boot e APIs.
- **Desenvolvedores Frontend (2):** Habilidosos em React e TypeScript.
- **Engenheiros DevOps (2):** Gerenciam CI/CD, infraestrutura e segurança.
- **Engenheiro de QA (1):** Garante a cobertura de testes e qualidade.
- **Scrum Master (1):** Facilita práticas ágeis.

---

Este documento fornece uma base para discutir e refinar a arquitetura da plataforma, os processos e as estratégias de gerenciamento nas etapas subsequentes.
