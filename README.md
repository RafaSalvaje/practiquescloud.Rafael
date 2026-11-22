# Ejercicios de Cloud Computing 1.4pt - Terraform y AWS (Pt1.4) Por Rafael Subi

Este repositorio contiene los ejercicios de Asix2opt_cloud_ra1_pt1.4 que se trada de usar **Terraform** para automatizar la creacion de instancias EC2 y VPCs.

## Estructura del Repositorio

* **[`pt1-4-ex1/`](./pt1-4-ex1/)** — **Ejercicio 1: Primeras instancias EC2 con Terraform**
  Despliegue automatizado de 2 instancias EC2 (`t3.micro`, Amazon Linux 2023) en la región `us-east-1`, incluyendo diagrama de topología e instrucciones de ejecución.

* **[`pt1-4-ex2/`](./pt1-4-ex2/)** — **Ejercicio 2: Diseño y Despliegue de VPC, Subredes y EC2**
  Creación de una VPC personalizada (`10.0.0.0/16`) con 3 subredes en `us-east-1a` (`Subnet-A`, `Subnet-B` y `Subnet-C`) y 6 instancias EC2 (2 por subred)

## Requisitos y Tecnologías
* **Proveedor Cloud:** AWS (AWS Academy Learner Lab - Región `us-east-1`)
* **Herramienta IaC:** Terraform (`hashicorp/aws`)
* **Diagramación:** draw.io (Iconografía oficial de AWS)
* **GUI de programacion:** Visual Studio Code (VSCode)

