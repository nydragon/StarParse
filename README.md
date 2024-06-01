# Starparse for Linux

This repository is a fork of the original [Starparse](http://ixparse.com/) by Ixale. It has been tailored specifically for Linux, incorporating additional functionalities and updates, including an upgrade to Java 17.

## Installation

### Prerequisites

Ensure you have the following installed on your system:

- Java 17
- Maven

### Steps

1. **Clone the Repository**
    ```sh
    git clone https://github.com/Sinrai/StarParse.git
    cd StarParse
    ```

2. **Build the Project**
    Use Maven to build the project and generate the JAR file.
    ```sh
    mvn clean package -DskipTests
    ```

3. **Run the Application**
    Navigate to the run script and execute it.
    ```sh
    cd StarParse/starparse-client/build
    ./run_starparse.sh
    ```

## Usage

After building and running the application as described above, Starparse will start and you can begin parsing your SWTOR combat logs. Refer to the original [Starparse documentation](http://ixparse.com/) for detailed usage instructions.

## Contributing

Contributions are welcome!
This is currently a hacky mess and workaround, feel free to create pull requests.

---

Happy parsing!
