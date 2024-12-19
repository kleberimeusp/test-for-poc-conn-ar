
# Sistemas SPI e STR no RSFN: Definições e Integrações

## 1. SPI (Sistema de Pagamentos Instantâneos)

### Definição
O **SPI (Sistema de Pagamentos Instantâneos)** é uma infraestrutura criada pelo Banco Central do Brasil para suportar transações em tempo real, funcionando 24 horas por dia, 7 dias por semana, inclusive em feriados. Ele é a base operacional do **PIX**, o sistema de pagamentos instantâneos amplamente adotado no Brasil.

### Principais Características
- Transações rápidas (em segundos).
- Disponibilidade contínua (24/7).
- Conexão direta entre instituições financeiras participantes.
- Segurança e conformidade com normas regulatórias.
- Baixo custo operacional para participantes e usuários finais.

### Integrações do SPI
1. **Participantes Diretos:**
   - Bancos, fintechs, cooperativas e outras instituições financeiras conectam-se diretamente ao SPI para realizar transações PIX.
   - Utilizam APIs fornecidas pelo Banco Central para consulta, envio e monitoramento de transações.

2. **Infraestruturas Associadas:**
   - **DICT (Diretório de Identificadores de Contas Transacionais):** Banco de dados associado ao SPI que gerencia as chaves PIX e permite a resolução de informações para realizar pagamentos.
   - **Mensageria:** Integração via padrões de mensageria segura (como ISO 20022) para comunicação entre os participantes.

3. **Interface com o BACEN:**
   - Integração para reportar transações realizadas e auditoria de dados.
   - Compliance com requisitos de segurança e criptografia.

---

## 2. STR (Sistema de Transferência de Reservas)

### Definição
O **STR (Sistema de Transferência de Reservas)** é o sistema brasileiro de liquidação bruta em tempo real, utilizado para transferências interbancárias de grandes valores e operações financeiras de alta prioridade. Ele é gerido pelo Banco Central e funciona durante o horário comercial em dias úteis.

### Principais Características
- Liquidação bruta em tempo real (RTGS - Real-Time Gross Settlement).
- Utilizado para transferências interbancárias e liquidação de operações da dívida pública.
- Foco em transações de alto valor ou alta prioridade.
- Controle direto pelo Banco Central, garantindo segurança e confiabilidade.

### Integrações do STR
1. **Participantes Diretos:**  
   - Apenas instituições autorizadas pelo Banco Central, como bancos comerciais, bancos de investimento e cooperativas de crédito.
   - Conexão ao STR para a liquidação de transações interbancárias e movimentação de reservas.

2. **Sistemas Financeiros Relacionados:**
   - **CIP (Câmara Interbancária de Pagamentos):** Integração com sistemas de compensação e liquidação de transações, como TEDs e transferências interbancárias.
   - **Selic:** Liquidação de operações com títulos públicos federais.

3. **Interface com o BACEN:**  
   - Conexão direta com o Banco Central para controle e auditoria de reservas bancárias.
   - Integração via padrões estabelecidos pelo SPB (Sistema de Pagamentos Brasileiro).

---

## Mapa de Integrações

| Sistema          | Participantes Diretos                             | Interfaces Internas                   | Protocolos e Padrões         | Aplicações Principais             |
|-------------------|--------------------------------------------------|---------------------------------------|------------------------------|-----------------------------------|
| **SPI**          | Bancos, fintechs, cooperativas                   | DICT, APIs PIX                        | ISO 20022, HTTPS             | Pagamentos instantâneos (PIX)    |
| **STR**          | Bancos comerciais, bancos de investimento, BACEN | CIP, Selic                            | RTGS, ISO 20022, SWIFT       | Transferências interbancárias    |

---

## Comparação Resumida

| Aspecto                | SPI                          | STR                          |
|------------------------|------------------------------|------------------------------|
| **Finalidade**         | Pagamentos instantâneos (PIX)| Liquidação de alto valor     |
| **Operação**           | 24/7                        | Horário comercial            |
| **Tipo de Liquidação** | Transações rápidas           | Bruta em tempo real (RTGS)   |
| **Participantes**      | Instituições financeiras gerais | Instituições autorizadas pelo BACEN |

---

Esses sistemas garantem a eficiência e segurança das transações financeiras no Brasil, com integração por meio de APIs e protocolos robustos que permitem a comunicação entre diferentes instituições e o Banco Central.
