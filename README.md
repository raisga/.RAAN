# OmniCreator

## Project Title: OmniContent Creator

OmniContent Creator is a versatile application designed to utilize the OpenAI ChatGPT API to generate various types of media content. The app aims to streamline the creation of book covers, song lyrics, educational videos, grammar corrections, language translations, and more, leveraging the power of AI.

### Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Technology Stack](#technology-stack)
- [Setup and Installation](#setup-and-installation)
- [Usage](#usage)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

---

### Introduction

OmniContent Creator integrates OpenAI's ChatGPT API to produce diverse media content efficiently. This project is ideal for content creators, educators, marketers, and anyone interested in leveraging AI for creative tasks.

### Features

- **Book Cover Generation**: Create unique and compelling book covers.
- **Lyric Writing**: Generate lyrics for various music genres.
- **Educational Videos**: Produce scripts for educational content.
- **Grammar Corrections**: Enhance written content by correcting grammar.
- **Language Translation**: Translate content into multiple languages.
- **Modular Architecture**: Easily extendable for additional features.

### Technology Stack

- **Frontend**: React.js, HTML, CSS, JavaScript
- **Backend**: Node.js, Express.js
- **API**: OpenAI ChatGPT API
- **Database**: MongoDB (for storing user preferences and generated content)
- **Deployment**: Docker, AWS (or any cloud service of choice)

### Setup and Installation

1. **Clone the Repository**

   ```
   git clone https://github.com/your-repo/OmniContent-Creator.git
   cd OmniContent-Creator
   ```

2. **Install Dependencies**

   - Frontend:
     ```
     cd frontend
     npm install
     ```

   - Backend:
     ```
     cd backend
     npm install
     ```

3. **Environment Configuration**

   Create a `.env` file in the backend directory and add the following:

   ```
   OPENAI_API_KEY=your_openai_api_key
   MONGO_DB_URI=your_mongodb_uri
   PORT=5000
   ```

4. **Run the Application**

   - Backend:
     ```
     npm start
     ```

   - Frontend:
     ```
     cd frontend
     npm start
     ```

   The application should now be running on `http://localhost:3000`.

### Usage

1. **Choose Content Type**: Select the type of content you want to generate (e.g., book cover, lyrics).
2. **Input Parameters**: Provide necessary parameters or preferences for the content.
3. **Generate Content**: Click the generate button to receive the AI-generated content.
4. **Review and Save**: Review the content and save or export as needed.

### Testing

- **Unit Testing**: Utilize frameworks like Jest and Mocha for backend testing.
- **Integration Testing**: Test the integration of different modules.
- **End-to-End Testing**: Use tools like Cypress for frontend and user flow testing.

Run tests using:

```
npm test
```

### Contributing

Contributions are welcome! Please read the [CONTRIBUTING.md](CONTRIBUTING.md) file for details on how to contribute to this project.

### License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

### Contact

For any queries or contributions, please contact [team@raisga.com](mailto:team@raisga.com).
