workspace "Diagrama de Contexto API Gateway" "Representação do contexto do API Gateway e suas integrações." {
    model {
        // Declaração do elemento 'ClientApps' como um Person
        client = person "Client Apps" {
            description "Usuários ou aplicações cliente que consomem APIs da plataforma."
        }

        // Declaração dos sistemas principais
        api_gateway = softwareSystem "API Gateway" {
            description "Gateway responsável por intermediar e abstrair os serviços da plataforma."
        }
        spi_service = softwareSystem "SPI Service" {
            description "Serviço que conecta ao sistema SPI."
        }
        spi_system = softwareSystem "SPI System" {
            description "Sistema SPI gerido pelo Banco Central."
        }
        str_service = softwareSystem "STR Service" {
            description "Serviço que conecta ao sistema STR."
        }
        str_system = softwareSystem "STR System" {
            description "Sistema STR gerido pelo Banco Central."
        }

        // Declaração das relações
        client -> api_gateway "Consome APIs do gateway"
        api_gateway -> spi_service "Envia chamadas para o SPI Service"
        spi_service -> spi_system "Conecta ao SPI System"
        api_gateway -> str_service "Envia chamadas para o STR Service"
        str_service -> str_system "Conecta ao STR System"
    }

    views {
        // Definição da visão do Diagrama de Contexto
        systemContext api_gateway "diagram_context_api_gateway" {
            description "Diagrama de contexto representando o API Gateway e suas interações."
            include client
            include spi_service
            include spi_system
            include str_service
            include str_system
            autolayout lr
        }

        // Estilos para o diagrama
        styles {
            element "Person" {
                background "#08427b"
                color "#ffffff"
                shape person
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
