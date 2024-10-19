# Use the official Flutter SDK image
FROM cirrusci/flutter:stable

# Set the working directory inside the container
WORKDIR /app

# Copy the Flutter project files into the container
COPY . .

# Get dependencies and build the app
RUN flutter pub get
RUN flutter build apk --release

# Optionally, expose any ports if needed for testing
# EXPOSE 8080

# Define the command to run the Flutter app (if running as a web or server-side app)
CMD ["flutter", "run"]
