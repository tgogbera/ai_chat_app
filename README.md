# AI Chat Application

A modern Flutter application for chatting with AI assistants.

## Overview

This project is a mobile chat application built with Flutter that allows users to communicate with AI models. It features a clean, intuitive interface with a beautiful glass-morphic design.

## Features

- Chat with AI assistants
- Message history viewing
- User authentication
- Beautiful UI with glass-morphic design elements
- Cross-platform support (iOS & Android)

## Tech Stack

- Flutter for cross-platform mobile development
- Riverpod for state management
- Go Router for navigation
- Dio for API communication

## Getting Started

1. Clone the repository
2. Create a `.env` file in the root directory with your API credentials
3. Run `flutter pub get` to install dependencies
4. Launch the app with `flutter run`

## Environment Setup

Ensure you have the following environment variables in your `.env` file:

```env
API_BASE_URL=your_api_url
API_KEY=your_api_key
```

## Project Structure

The project follows a feature-based architecture:

- `lib/ui/` - UI components organized by screen
- `lib/data/` - Data models and repositories
- `lib/core/` - Core utilities like networking and routing
