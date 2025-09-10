# Odoo 17 Docker Setup

Repositori ini berisi konfigurasi untuk menjalankan Odoo 17 menggunakan Docker, beserta PostgreSQL sebagai database backend dan dukungan untuk modul kustom.

## Struktur Direktori

- `conf/`  
  Berisi file konfigurasi Docker, environment, dan Odoo.
  - `.env` : Variabel lingkungan untuk database dan Odoo.
  - `docker-compose.yaml` : Definisi layanan Docker.
  - `Dockerfile` : Custom image Odoo dengan dependensi tambahan.
  - `odoo.conf` : Konfigurasi Odoo.

- `customize/`  
  Berisi modul-modul kustom Odoo yang dapat diaktifkan.

- `app.sh`  
  Skrip bash untuk memudahkan pengelolaan lifecycle Docker Compose (`up`, `down`, `restart`, `logs`).

## Cara Instalasi

1. **Clone repositori ini**
   ```sh
   git clone <repo-url>
   cd odoo-docker
   ```

2. **Build custom image Odoo**
   ```sh
   docker build -t custom-odoo:17.0 -f conf/Dockerfile .
   ```

3. **Jalankan layanan**
   ```sh
   ./app.sh up
   ```

4. **Akses Odoo**
   - Buka browser dan akses `http://localhost:8070`

## Manajemen Layanan

Gunakan skrip `app.sh` untuk mengelola layanan:
```sh
./app.sh up        # Menyalakan layanan
./app.sh down      # Mematikan layanan
./app.sh restart   # Restart layanan
./app.sh logs      # Melihat log layanan
```

## Konfigurasi

- **Odoo**: Konfigurasi utama ada di `conf/odoo.conf`.
- **Database**: Variabel lingkungan diatur di `conf/.env`.
- **Modul Kustom**: Tempatkan modul Odoo Anda di `customize/addons-customize`.

## Catatan

- Pastikan port `8070` dan `5438` tidak digunakan oleh aplikasi lain.
- Untuk detail lebih lanjut, lihat [Tutorial Install Odoo 17 Menggunakan Docker](https://rohimoz28.github.io/posts/tutorial-install-odoo-17-menggunakan-docker/)