# Book of RC

A book to help people discover and thrive in the world of remote control vehicles

![Book cover](./docs/images/logo.webp "A cartoon image of a 4x4 remote control truck")

## Getting Started

This repository hosts the source code for the **Book of RC** website, a static site built using MkDocs. Follow the instructions below to build and run the site locally, or visit the live site hosted on GitHub Pages.

### Prerequisites

Ensure you have the following installed:

- [Python 3.11 or later](https://www.python.org/)
- [pip](https://pip.pypa.io/en/stable/) (Python package manager)

### Building and Running Locally

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/matt-the-ogre/book-of-rc.git
   cd book-of-rc
   ```

2. **Install Dependencies**:
   Use `pip` to install MkDocs and the required dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. **Run the Local Development Server**:
   Start the MkDocs development server:
   ```bash
   mkdocs serve
   ```
   This will start a local server accessible at:
   ```
   http://127.0.0.1:8000
   ```
   If you’ve set up a custom hostname (e.g., `dev.local`), visit:
   ```
   http://dev.local:8000/book-of-rc/
   ```

4. **Make Changes**:
   Modify the Markdown files in the `docs/` directory. The site will automatically rebuild, and changes will be reflected in the browser.

### Automatic Deployment

The site is automatically deployed to GitHub Pages whenever changes are pushed to the `main` branch. This is handled by a GitHub Action configured in the `.github/workflows/deploy.yml` file.

The live site is accessible at:
**[https://matt-the-ogre.github.io/book-of-rc/](https://matt-the-ogre.github.io/book-of-rc/)**

(c) 2024 Matthew Alexander Manuel
