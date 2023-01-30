# README

This README would normally document whatever steps are necessary to get the
application up and running.

para levantar la web, tener en consideración:

requerimientos:
<br>

- Ruby version
  <br>
  \*\* 3.0.0
  <br>
- Rails version
  <br>
  \*\* 7.0.3
  <br>
  <code> git clone git@github.com:emersonxinay/blog_basico1.git</code>
  <br>
  <code>bundle install </code>
  <br>
  <code> rake db:create
  </code>
  <br>
  <code> rake db:migrate
  </code>
  <br>
  <code>rake assets:precompile
  </code>
  <br>
  <code> rails s
  </code>
  <br>
  <a>https://cosmixy-blog.herokuapp.com/ </a>


<h2>Deploy Fly.io  - Activo </h2>
  <a href="https://peliculas.fly.dev/">link en https://peliculas.fly.dev/ </a>

  <h3>Aplicación web sirve para crear un pequeño blog, donde puedes crear y publicar un post </h3>


  # Blog con Ruby On Rails 

### pasos para levantar en el local
```bash 
git clone 
```

```bash
bundle install
```
```bash
rails db:create
```
```bash 
rails db:migrate
```

## Configuración para deploy en  fly.io 
### en MAC
### ya deberiamos tener instalado brew 
### instalar fly en mac
```bash 
brew install flyctl
``` 
```bash 
fly
```
## ahora nos registramos pero con el siguiente comando 

```bash 
fly auth signup 
```
### eso te llevara a una pestaña de anvegador para que te registres o sino solo aceptar el acceso si ya tienes cuenta

### ahora configuramos desde consola porque el servidor de fly trabaja en linux
```bash
bundle lock --add-platform x86_64-linux
```

### ahora corremos nuevamente solo bundle

```bash
bundle
```



### ahora corremos para rellenar un formulario desde consola 

```bash
fly launch
```
### la mayoria le das enter por defecto o yes  excepto el primero que te dice nombre del proyecto 

## para hacer el deploy 
```bash 
fly deploy 
```

## para abrir 
```bash 
fly open
```

## hacer comandos desde terminal de producción de fly
```bash 
fly ssh console -C "app/bin/rails console"
```
