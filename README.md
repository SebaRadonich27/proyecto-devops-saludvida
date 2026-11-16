
# SaludVida - Proyecto DevOps

## Descripción

SaludVida es una aplicación web estática que simula
un sistema de reserva de horas médicas.

Este proyecto fue desarrollado como actividad
académica de la asignatura DevOps de IACC.

## Objetivo

Aplicar prácticas DevOps mediante control de
versiones, contenedores Docker, documentación,
seguridad y monitoreo básico.

## Tecnologías utilizadas

- HTML5
- CSS3
- Visual Studio Code
- Git y GitHub
- Docker Desktop
- Docker Compose
- Nginx Alpine

## Estructura del proyecto

```text
proyecto-devops/
├── src/
│   ├── index.html
│   └── styles.css
├── Dockerfile
├── docker-compose.yml
├── .env.example
├── .gitignore
└── README.md
```

## Requisitos

- Docker Desktop instalado y funcionando.
- Docker Compose disponible.
- Navegador web.

## Instrucciones de ejecución

Abrir una terminal en la carpeta del proyecto.

Construir e iniciar el contenedor:

```bash
docker compose up -d --build
```

Comprobar el estado:

```bash
docker compose ps
```

Abrir la aplicación en:

http://localhost:8080

## Monitoreo

Consultar los registros:

```bash
docker logs saludvida-web
```

Consultar las métricas:

```bash
docker stats --no-stream
```

## Detener el servicio

```bash
docker compose down
```

## Seguridad

- No se utilizan contraseñas ni tokens reales.
- El archivo .gitignore excluye archivos privados.
- .env.example contiene solamente valores ficticios.
- No existe conexión a bases de datos.
- No se almacenan reservas ni datos personales.
- El formulario es únicamente demostrativo.

## Limitaciones

La aplicación no realiza reservas reales.
No dispone de API, backend ni base de datos.
Su objetivo es demostrar una implementación
web reproducible mediante Docker.

## Contexto académico

Asignatura: DevOps

Institución: IACC

Año: 2026

## Resultados de monitoreo local

Durante las pruebas de SaludVida se verificó que el
servidor Nginx respondió correctamente a las solicitudes
de la página principal y la hoja de estilos, mediante
respuestas HTTP 200.

El monitoreo se realizó utilizando los comandos:

- docker compose ps
- docker logs saludvida-web
- docker stats --no-stream

En una medición puntual se registró un consumo de
CPU de 0.00 % y 5.285 MiB de memoria.

También se observó una respuesta HTTP 404 para
favicon.ico, debido a que la aplicación no incluye
un icono personalizado.

Estos resultados evidencian el funcionamiento del
servicio y la utilidad del monitoreo básico en DevOps.
