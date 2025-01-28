# Unhandled Exception in Asynchronous Dart Operation

This repository demonstrates a common error in Dart: neglecting to handle exceptions during asynchronous operations.  The `bug.dart` file contains code that fetches data from an API but lacks proper exception handling.  The `bugSolution.dart` file provides a corrected version with comprehensive exception handling.

**Problem:** The original code doesn't handle potential `http.get` failures (e.g., network issues) or JSON decoding errors, leading to app crashes.

**Solution:** The solution includes a `try-catch` block to gracefully handle exceptions, providing more robust error handling and preventing app crashes.