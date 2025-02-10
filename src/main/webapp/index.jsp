<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DevOps HomePage</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: powderblue;
            color: #333;
        }

        header {
            background-color: #24292e;
            color: white;
            padding: 20px;
            text-align: center;
        }

        nav {
            background-color: #0366d6;
            display: flex;
            justify-content: center;
            gap: 20px;
            padding: 10px;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        nav a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            padding: 8px 15px;
            border-radius: 5px;
            transition: background 0.3s;
        }

        nav a:hover {
            background-color: #024a9c;
        }

        .hero {
            background: url('https://via.placeholder.com/1200x400') no-repeat center center/cover;
            color: white;
            text-align: center;
            padding: 80px 20px;
            position: relative;
        }

        .hero::after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
        }

        .hero-content {
            position: relative;
            z-index: 1;
        }

        .hero h1 {
            font-size: 3em;
            margin: 0;
        }

        .hero p {
            font-size: 1.2em;
            margin: 10px 0 20px;
        }

        .btn {
            display: inline-block;
            background-color: #ff9800;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            transition: background 0.3s;
        }

        .btn:hover {
            background-color: #e68900;
        }

        .container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            padding: 20px;
        }

        .card {
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            padding: 20px;
            transition: transform 0.3s, box-shadow 0.3s;
            text-align: center;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
        }

        .card h2 {
            color: #0366d6;
        }

        .features, .tools {
            background-color: #e0f7fa;
            padding: 40px 20px;
            text-align: center;
            transition: background-color 0.3s ease;
        }

        .features:hover, .tools:hover {
            background-color: #b2ebf2;
        }

        .tool-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }

        .tool-item {
            position: relative;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .tool-item:hover {
            transform: scale(1.1);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        }

        .tool-item img {
            width: 100px;
            height: 100px;
            object-fit: contain;
            margin-bottom: 10px;
        }

        .tooltip {
            visibility: hidden;
            background-color: black;
            color: #fff;
            text-align: center;
            border-radius: 5px;
            padding: 5px;
            position: absolute;
            z-index: 1;
            bottom: 120%;
            left: 50%;
            transform: translateX(-50%);
            opacity: 0;
            transition: opacity 0.3s;
        }

        .tool-item:hover .tooltip {
            visibility: visible;
            opacity: 1;
        }
    </style>
</head>
<body>
    <header>
        <h1>DevOps Dashboard</h1>
    </header>

    <nav>
        <a href="#">Home</a>
        <a href="#">About</a>
        <a href="#">Services</a>
        <a href="#">Contact</a>
    </nav>

    <section class="hero">
        <div class="hero-content">
            <h1>Streamline Your Development Process</h1>
            <p>Integrate, Deploy, and Scale with ease.</p>
            <a href="#" class="btn">Get Started</a>
        </div>
    </section>

    <section class="tools">
        <h3>Essential DevOps Tools</h3>
        <div class="tool-list">
            <div class="tool-item">
                <img src="https://git-scm.com/images/logos/downloads/Git-Icon-1788C.png" alt="Git Logo">
                <h3>Git & GitHub</h3>
                <div class="tooltip">Version control for managing code changes.</div>
            </div>
            <div class="tool-item">
                <img src="https://upload.wikimedia.org/wikipedia/commons/5/52/Apache_Maven_logo.svg" alt="Maven Logo">
                <h3>Maven</h3>
                <div class="tooltip">Project management and comprehension tool.</div>
            </div>
            <div class="tool-item">
                <img src="https://upload.wikimedia.org/wikipedia/commons/e/e9/Jenkins_logo.svg" alt="Jenkins Logo">
                <h3>Jenkins</h3>
                <div class="tooltip">Automation server for CI/CD pipelines.</div>
            </div>
            <div class="tool-item">
                <img src="https://www.docker.com/wp-content/uploads/2022/03/Moby-logo.png" alt="Docker Logo">
                <h3>Docker</h3>
                <div class="tooltip">Containerization platform for apps.</div>
            </div>
            <div class="tool-item">
                <img src="https://upload.wikimedia.org/wikipedia/commons/2/24/Ansible_logo.svg" alt="Ansible Logo">
                <h3>Ansible</h3>
                <div class="tooltip">Tool for automation and configuration management.</div>
            </div>
            <div class="tool-item">
                <img src="https://xebia.com/wp-content/uploads/2024/04/learning-terraform-Terraform-AWS.jpg.webp" alt="Terraform Logo">
                <h3>Terraform</h3>
                <div class="tooltip">Infrastructure as Code (IaC) tool.</div>
            </div>
            <div class="tool-item">
                <img src="https://upload.wikimedia.org/wikipedia/commons/3/39/Kubernetes_logo_without_workmark.svg" alt="Kubernetes Logo">
                <h3>Kubernetes</h3>
                <div class="tooltip">Orchestrates containerized applications.</div>
            </div>
        </div>
    </section>

    <footer>
        <p>&copy; 2025 DevOps Solutions. All rights reserved.</p>
        <p>Developed by Ajith D A </p>
    </footer>
</body>
</html>
