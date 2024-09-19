# PySpark Notebook Docker Image

This repository contains the Dockerfile for building a PySpark Notebook Docker image.

## Getting Started

These instructions will help you build and run the Docker image on your local machine.

### Prerequisites

- Docker installed on your machine. You can download it from [here](https://www.docker.com/products/docker-desktop).

### Building the Docker Image

To build the Docker image, navigate to the directory containing the Dockerfile and run the following command:

```sh
docker build -t pyspark-notebook .
```

### Running the Docker Container

To run the Docker container, use the following command:

```sh
docker run -p 8888:8888 pyspark-notebook
```

This will start the Jupyter Notebook server, and you can access it by navigating to `http://localhost:8888` in your web browser.

### Using the PySpark Notebook

Once the Jupyter Notebook server is running, you can create new notebooks and start using PySpark. The PySpark environment is pre-configured and ready to use.

## Contributing

If you would like to contribute to this project, please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Apache Spark](https://spark.apache.org/)
- [Jupyter](https://jupyter.org/)
