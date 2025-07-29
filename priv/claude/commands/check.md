# Project Check

Run comprehensive checks on the Elixir project to ensure code quality and compilation.

## Commands

1. Format code:
```bash
mix format
```

2. Compile with all warnings:
```bash
mix compile --all-warnings
```

3. Run Credo (if installed):
```bash
mix credo
```

4. Check for compile-time dependencies:
```bash
MIX_ENV=dev mix xref graph --label compile-connected --fail-above 0
```