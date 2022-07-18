![limoneno](https://github.com/LemontechSA/limoneno/blob/master/frontend/src/assets/png/limoneno.png?raw=true)

***LET IA training tool***

## Comienzo

Limoneno  herramienta para asistir el proceso de entrenamiento de modelos de machine learning, especificamente relacionado al uso de CNN ***(Convolutional neural networks)***, diseñada para efectuar y gestionar un trabajo colaborativo a la hora de abordar proyectos de entrenamiento y clasificacion de modelos.

Limoneno permite la gestión de usuarios y proyectos de forma que puede utilizarse para asignar cargas de trabajo y medir el avance de un pool de personas dedicadas al trabajo de clasificación.

Asi mismo integra la posibilidad de efectuar clasificación multiesquema, permitiendo en la misma identificación de un elemento del datatset, integrar mas de un tipo de identificación para agilizar y disminuir el tiempo en la generación de los elementos necesarios para el entrenamiento de un modelo IA.

## Dependencias

Para comenzar con el desarrollo al interior de la app debe efectuar las siguientes instrucciones:

- Install Ruby and Ruby on Rails
```bash
# In Debian based linux
sudo apt-get install ruby-full
# In RHEL based linux
sudo yum install ruby
```

O puede usar su administrador de versiones de ruby ​​preferido.

Luego instalar bundler y foreman
```bash
gem install bundler
gem install foreman
```

## Entorno de desarrollo

La app está construida con una arquitectura Cliente - Servidor, separando de esta forma la lógica de backend y frontend.

### Backend

En primer lugar, debe acceder al directorio de backend y ejecutar la sentencia, lo que instala las dependencias del proyecto.

```bash
cd backend
bundle install
```

Luego es necesario crear la base de datos y correr las migraciones existentes para migrar los modelos de datos. Adicionalmente, hay que generar datos de prueba para que la aplicación pueda funcionar correctamente.

```bash
# Run migrations
rake db:create
rake db:migrate
rake db:seed
```

Posterior a esto debe iniciar la app en rails para desplegar el entorno de backend. Para esto en el mismo directorio ejecute la siguiente instrucción.

```bash
# Run rails app
foreman start
```

**Recuerda agregar información extra al README, si efectuaste una modificación al entorno**

## Deploy

La app esta pensada para ser desplegada a traves de un proceso de integración continua utilizando AWS Code Pipeline

TO DO
