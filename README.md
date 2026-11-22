# Ejercicios de Cloud Computing  - Por Rafael Subi

Este repositorio contiene los ejercicios de Cloud Computing, este readme se ira actualizando a medida que se vayan completando los ejercicios y prácticas de la asignatura.

## Estructura del Repositorio

* **[`pt1-4-ex1/`](./pt1-4-ex1/)** — **Ejercicio 1: Primeras instancias EC2 con Terraform**
  Despliegue automatizado de 2 instancias EC2 (`t3.micro`, Amazon Linux 2023) en la región `us-east-1`, incluyendo diagrama de topología e instrucciones de ejecución.

* **[`pt1-4-ex2/`](./pt1-4-ex2/)** — **Ejercicio 2: Diseño y Despliegue de VPC, Subredes y EC2**
  Creación de una VPC personalizada (`10.0.0.0/16`) con 3 subredes en `us-east-1a` (`Subnet-A`, `Subnet-B` y `Subnet-C`) y 6 instancias EC2 (2 por subred)

* **[`pt2-2/`](./pt2-2/)** — **Práctica 2.2: Despliegue de Infraestructura Básica en AWS con Terraform**
  Despliegue automatizado de una VPC con 2 subredes en distintas zonas de disponibilidad, salida a Internet mediante Internet Gateway, control de tráfico con Security Groups y 2 instancias EC2 comunicadas entre sí.

## Requisitos y Tecnologías
* **Proveedor Cloud:** AWS (AWS Academy Learner Lab - Región `us-east-1`)
* **Herramienta IaC:** Terraform (`hashicorp/aws`)
* **Diagramación:** draw.io (Iconografía oficial de AWS)
* **GUI de programacion:** Visual Studio Code (VSCode)

