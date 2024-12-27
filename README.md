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
    sudo chmod +x install.sh
    ```

3. Run the `install.sh` script:
    ```bash
    sudo ./install.sh
    ```

4. Once the installation is complete, start the Apache server:
    ```bash
    sudo systemctl start apache2
    ```

## Additional Instructions

- After running the script, you need to visit the following URL on your Metasploitable2 machine to complete the installation:
    ```bash
    http://<metasploitable2_ip>/bWAPP/install.php
    ```

## Contact

For any issues or feedback, feel free to open an issue in the [GitHub repository](https://github.com/joseph-george1/bwapp-installer).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
