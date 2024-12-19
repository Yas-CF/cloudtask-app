# CloudTask API Deployment

Este repositorio contiene los archivos y configuraciones necesarios para desplegar una API basada en Docker en Amazon ECS utilizando un pipeline CI/CD automatizado con GitHub Actions.

## Descripción del Proyecto

La **CloudTask API** es una aplicación simple que gestiona tareas de los usuarios. Este repositorio incluye:
- Código fuente de la API.
- Archivo `Dockerfile` para construir la imagen de Docker.
- Pipeline CI/CD con GitHub Actions para automatizar el flujo de despliegue:
  1. Construcción de la imagen Docker.
  2. Subida de la imagen a Amazon ECR.
  3. Actualización del servicio en Amazon ECS.

## Requisitos Previos

Antes de utilizar este repositorio, asegúrate de tener configurados los siguientes recursos en AWS:
1. Un **repositorio ECR** para almacenar las imágenes Docker.
2. Un **cluster ECS** configurado con tareas y servicios basados en Fargate.
3. Un **rol IAM** (`ecsTaskExecutionRole`) con los permisos necesarios para ejecutar tareas en ECS.
4. Configuración de red en AWS (VPC, subnets, y security groups).

## Estructura del Proyecto

```plaintext
cloudtask-app/
├── app/
│   ├── main.py               # Archivo principal de la API
│   ├── requirements.txt      # Dependencias de la aplicación
├── .github/
│   ├── workflows/
│       └── deploy.yml        # Configuración del pipeline CI/CD
├── Dockerfile                # Configuración para construir la imagen Docker
├── README.md                 # Documentación del proyecto
