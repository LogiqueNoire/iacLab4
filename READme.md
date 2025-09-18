# Ansible + Terraform
Grupo 07

## Infraestructura solicitada

<img width="733" height="629" alt="image-3" src="https://github.com/user-attachments/assets/16667041-38f0-4800-a364-a682a9e11d12" />

## Integrantes:

1. Hugo Cárdenas Iglesias  
2. Leandro Mauricci Becerra  
3. Aryel Meza Córdova  
4. José Saldaña Zumarán  
5. Michael Velásquez Miranda  

# Instrucciones

### 1. Descarga el `.zip` y descomprímelo.  
Luego, abre una terminal y navega a la carpeta del proyecto.

### 2. Abre una terminar en el proyecto  y muévete a la carpeta iac para ejecutar terraform

```bash
cd iac
```

### 3. Inicializa Terraform y descarga los providers:

```bash
sudo terraform init
```

### 4. (Opcional) Genera un plan de ejecución para ver los cambios que se aplicarán

Este paso no es obligatorio, pero te permite revisar qué recursos se crearán, modificarán o eliminarán **antes de aplicar los cambios**.

```bash
sudo terraform plan
```

### 5. Aplica los cambios definidos en la configuración de Terraform

Este comando aplica la configuración escrita en los archivos `.tf` y crea la infraestructura

```bash
sudo terraform apply
```
### 6. Abre otra terminal en vs code y muévete a la carpeta iac para ejecutar el comdando de ansible

```bash
cd config
```

### 7. Ejecutar configuración de ansible

Una vez aplicada la infraestructura con Terraform, procedemos a ejecutar el siguiente comando para aplicar la configuración de ansible:

```bash
sudo ansible-playbook -i inventory.ini playbook.yml
```

### 8. Verifica que los servicios estén accesibles

Abre tu navegador web y accede al servicio a través de `localhost`.

Por ejemplo, ingresa:`http://localhost/api`

