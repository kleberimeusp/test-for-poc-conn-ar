workspace "Diagrama de Componentes - API Gateway" "Representação dos componentes internos do Core do API Gateway." {
    model {
        // Declaração do sistema principal
        api_gateway = softwareSystem "API Gateway" {
            description "Gateway responsável por intermediar e abstrair os serviços da plataforma."

            // Declaração do container Core
            core = container "Core" {
                description "Gerencia requisições e roteamento."
                technology "Spring Boot"

                // Componentes do Core
                request_handler = component "Request Handler" {
                    description "Manipula as requisições recebidas e direciona para os serviços apropriados."
                    technology "Spring MVC"
                }

                auth_manager = component "Authentication Manager" {
                    description "Gerencia a autenticação de usuários e valida tokens."
                    technology "Spring Security"
                }

                audit_logger = component "Audit Logger" {
                    description "Registra eventos e atividades para auditoria."
                    technology "Logback"
                }

                notification_dispatcher = component "Notification Dispatcher" {
                    description "Envia notificações para os clientes sobre eventos e transações."
                    technology "RabbitMQ"
                }
            }
        }

        // Sistemas externos
        spi_service = softwareSystem "SPI Service" {
            description "Serviço que conecta ao sistema SPI."
        }

        str_service = softwareSystem "STR Service" {
            description "Serviço que conecta ao sistema STR."
        }

        // Relações entre componentes e sistemas externos
        request_handler -> auth_manager "Valida autenticação"
        request_handler -> audit_logger "Registra eventos"
        request_handler -> notification_dispatcher "Envia notificações"
        request_handler -> spi_service "Comunica-se com o SPI Service"
        request_handler -> str_service "Comunica-se com o STR Service"
    }

    views {
        // Visão do diagrama de componentes
        component core "diagram_component_api_gateway" {
            description "Diagrama de componentes do Core do API Gateway."
            include *
            autolayout lr
        }

        // Estilos
        styles {
            element "Component" {
                background "#6c757d"
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
