# Formatting and Linting

This repository uses formatters and linters to maintain code quality and consistency.

## Tools

### YAML
- **Formatter**: [yamlfmt](https://github.com/google/yamlfmt)
- **Linter**: [yamllint](https://github.com/adrienverge/yamllint)
- **Ansible Linter**: [ansible-lint](https://github.com/ansible/ansible-lint)

### Lua (Neovim config)
- **Formatter**: [StyLua](https://github.com/JohnnyMorganz/StyLua)
- **Linter**: [luacheck](https://github.com/lunarmodules/luacheck)

## Installation

### YAML Tools
```bash
# Install yamlfmt
go install github.com/google/yamlfmt/cmd/yamlfmt@latest

# Install yamllint
pip install yamllint

# Install ansible-lint
pip install ansible-lint
ansible-galaxy collection install -r ansible/requirements.yaml
```

### Lua Tools
```bash
# Install StyLua
cargo install stylua

# Install luacheck
luarocks install luacheck
```

## Usage

### Format YAML files
```bash
yamlfmt .
```

### Check YAML formatting
```bash
yamlfmt -lint .
```

### Lint YAML files
```bash
yamllint .
```

### Lint Ansible playbooks
```bash
ansible-lint ansible/
```

### Format Lua files
```bash
stylua nvim/
```

### Check Lua formatting
```bash
stylua --check nvim/
```

### Lint Lua files
```bash
luacheck nvim/
```

## CI/CD

The repository includes GitHub Actions workflows that automatically check formatting and linting:

- **Formatting Workflow** (`.github/workflows/formatting.yml`): Checks YAML and Lua formatting
- **Linting Workflow** (`.github/workflows/linting.yml`): Runs yamllint, ansible-lint, and luacheck

All checks run on every push and pull request.
