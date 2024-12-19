workspace "Diagrama de Container - API Gateway" "Representação dos containers do API Gateway e seus serviços." {
    model {
        // Declaração do elemento 'ClientApps' como um Person
        client = person "Client Apps" {
            description "Usuários ou aplicações cliente que consomem APIs da plataforma."
        }

        // Declaração do sistema principal com containers
        api_gateway = softwareSystem "API Gateway" {
            description "Gateway responsável por intermediar e abstrair os serviços da plataforma."

            // Containers declarados dentro do softwareSystem
            core = container "Core" {
                description "Gerencia requisições e roteamento."
                technology "Spring Boot"
            }

            auth_service = container "Authentication Service" {
                description "Gerencia autenticação e autorização."
                technology "OAuth 2.0"
            }

            audit_logging = container "Audit and Logging" {
                description "Grava logs e monitora eventos."
                technology "Elastic Stack"
            }

            notification_service = container "Notification Service" {
                description "Envia notificações para os clientes."
                technology "RabbitMQ"
            }

            spi_service = container "SPI Service" {
                description "Serviço que conecta ao sistema SPI."
                technology "HTTP REST"
            }

            str_service = container "STR Service" {
                description "Serviço que conecta ao sistema STR."
                technology "HTTP REST"
            }
        }

        // Sistemas externos
        spi_system = softwareSystem "SPI System" {
            description "Sistema SPI gerido pelo Banco Central."
        }
        str_system = softwareSystem "STR System" {
            description "Sistema STR gerido pelo Banco Central."
        }

        // Declaração das relações usando identificadores de containers
        client -> core "Consome APIs do Core"
        core -> auth_service "Valida autenticação"
        core -> audit_logging "Grava logs"
        core -> notification_service "Dispara notificações"
        core -> spi_service "Envia chamadas para o SPI Service"
        spi_service -> spi_system "Conecta ao SPI System"
        core -> str_service "Envia chamadas para o STR Service"
        str_service -> str_system "Conecta ao STR System"
    }

    views {
        // Definição da visão do Diagrama de Containers
        container api_gateway "diagram_container_api_gateway" {
            description "Diagrama de containers do API Gateway."
            include client
            include *
            autolayout lr
        }

        // Estilos
        styles {
            element "Person" {
                background "#08427b"
                color "#ffffff"
                shape person
            }
            element "Container" {
                background "#008080"
                color "#ffffff"
                shape box
            }
            element "Software System" {
                background "#1168bd"
                color "#ffffff"
                shape box
            }
            relationship "default" {
                dashed false
                thickness 2
            }
        }
    }
}
