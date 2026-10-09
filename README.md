# Mi Arco · Handball

App web de estadísticas de lanzamiento: arco por zonas, partidos y entrenamientos, compañeros, evolución y comparación con jugadores top (EHF/IHF).

## Cómo funciona

- **Hosting:** GitHub Pages (gratis). Cada cambio que se sube a este repositorio se publica solo en el mismo link.
- **Datos y cuentas:** Firebase (gratis). Firestore guarda partidos, entrenamientos, compañeros y fotos; Authentication maneja el login.
- **Login con usuario:** el usuario `javi` entra con la cuenta `javi@miarco.app` creada en Firebase.

## Archivos

| Archivo | Para qué |
|---|---|
| `index.html` | La app completa |
| `firebase-config.js` | Conexión con tu proyecto Firebase (pegar `firebaseConfig`) |
| `firestore.rules` | Reglas de seguridad: solo usuarios con cuenta leen y escriben |
| `data-inicial.json` | Datos de la versión anterior; se importan con un botón la primera vez |
| `manifest.webmanifest`, `icon-*.png` | Para instalarla como app en el celular |

## Crear la cuenta de un compañero

1. Firebase → **Authentication** → **Users** → **Add user**.
2. Email: `nombre@miarco.app` (ej. `daniel@miarco.app`). Contraseña: la que quieras (mínimo 6 caracteres).
3. Dile que entre con usuario `daniel` y esa contraseña.

Para quitarle el acceso a alguien: en la misma lista, menú ⋮ → **Disable account** o **Delete account**.

## Publicar una versión nueva

Antes de cada commit con cambios en la app, correr `./publicar.sh`: actualiza el número de versión en `index.html` y `version.json`. Quien tenga la app abierta verá el aviso «Hay una actualización · Tocar para actualizar».
