# Unhandled Exception in Asynchronous Dart Code

This example demonstrates a common issue in Dart: insufficient error handling in asynchronous operations.  The `fetchData` function makes an HTTP request but only prints errors to the console; it doesn't propagate or handle them effectively, potentially causing the application to continue running despite underlying failures.

## Bug
The provided code fetches data from an API. However, it only prints exceptions to the console without providing a mechanism for higher-level error management or retrying the operation.  This leads to silent failures and makes debugging difficult.

## Solution
The solution includes improved error handling using `try-catch` blocks and a more structured approach to handling various HTTP response statuses.
