# Instrucciones de uso

1.  **Clonar el repositorio:**

    ```bash
    git clone https://github.com/frankerondon/python_assessment
    ```

2.  **Navegar al directorio del proyecto:**

    ```bash
    cd "python_assessment"
    ```

3.  **Instalar las dependencias:**

    ```bash
    pip install -r requirements.txt
    ```

4.  **Ejecutar las migraciones:**

    4.1. **Abrir XAMPP y phpMyAdmin.**
    
    4.2. **Editar el archivo `settings.py`:**
        * Abre `python_assessment\settings.py`.
        * Reemplaza la sección `DATABASES` con lo siguiente:
            
            DATABASES = {
                'default': {
                    'ENGINE': 'django.db.backends.mysql',
                    'NAME': 'python_assessment',
                    'USER': 'root',
                    'PASSWORD': '',
                    'HOST': 'localhost',
                    'PORT': '3306',
                }
            }
            
    4.3. **Crear la base de datos `python_assessment` en phpMyAdmin.**
    
    4.4. **Importar el archivo `python_assessment.sql` a la base de datos `python_assessment` en phpMyAdmin.**
    
    4.5. **Ejecutar las migraciones de Django:**
        
        py manage.py migrate
        

5.  **Ejecutar el servidor de desarrollo:**

    ```bash
    py manage.py runserver
    ```

6.  **Acceder a la aplicación web:**

    Abre tu navegador y ve a `http://127.0.0.1:8000/`.

## Cómo subir videos a la aplicación (Desde el panel de administración de Django)

1.  **Iniciar sesión como superusuario:**

    * Abre tu navegador y ve a `http://127.0.0.1:8000/admin`.
    * Ingresa las credenciales de superusuario:
        * **Usuario:** `frankerportatil`
        * **Contraseña:** `uno_dos_y3`

2.  **Acceder al formulario para agregar videos:**

    Abre tu navegador y ve a `http://127.0.0.1:8000/admin/videos/video/add/`.

3.  **Rellenar el formulario:**

    * **Título:** (Título del video)
    * **Vistas:** (Dejar en blanco)
    * **Autor:** (Seleccionar el autor)
    * **ID de YouTube:** (ID del video de YouTube)
    * **URL de la miniatura:** (URL de la miniatura de YouTube)
    * **Slug:** (Dejar en blanco o ingresar un slug personalizado)
    * **Likes:** (Dejar en blanco)
    * **Dislikes:** (Dejar en blanco)
    * **Creado en:** (Seleccionar la fecha)
    * **Activo:** (Marcar la casilla)

    **Notas:**

    * **ID de YouTube:** El ID de YouTube se extrae de la URL del video. Por ejemplo, en la URL `https://www.youtube.com/watch?v=bT6EpuONsIo`, el ID es `bT6EpuONsIo`.
    * **URL de la miniatura:** La URL de la miniatura se puede generar usando la API de YouTube. Por ejemplo, para el ID `bT6EpuONsIo`, la URL sería `https://img.youtube.com/vi/bT6EpuONsIo/mqdefault.jpg`.

## Datasets de entrada

* **Videos:** [`videodata.txt`](videodata.txt)
* **Usuarios:** [`usersdata.txt`](usersdata.txt)

## Demostración en video

* [Demostración de uso de la aplicación web](https://youtu.be/6O4ZHC-g9qU)