# bWAPP Installer

This repository contains a script to install and set up bWAPP (buggy Web Application) on your server.

## Prerequisites

- A server running Linux (Ubuntu/Debian preferred).
- Apache web server installed.
- `wget`, `chmod`, and `unzip` utilities installed.

## Installation Steps

1. Clone the repository:
    ```bash
    git clone https://github.com/joseph-george1/bwapp-installer.git
    cd bwapp-installer
    ```

2. Ensure you have the necessary permissions to run the installation script:
    ```bash
    sudo chmod +x bwapp-installer.sh
    ```

3. Run the `bewap-installer.sh` script:
    ```bash
     ./bwapp-installer.sh
    ```

4. Once the installation is complete, dont forget to turn off the apache2 server
   
## Additional Instructions

- After running the script, you need to visit the following URL on your Metasploitable2 machine to complete the installation:
    ```bash
    http://<metasploitable2_ip>/bWAPP/install.php
    ```
-The default username and password for bWAPP is:
   ```
    bee/bug
   ```

## Contact

For any issues or feedback, feel free to open an issue in the [GitHub repository](https://github.com/joseph-george1/bwapp-installer).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
