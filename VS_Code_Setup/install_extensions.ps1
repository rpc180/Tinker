# Lean VS Code Extensions for Conda-centric Python dev

$extensions = @(
  # --- Python / Conda workflow ---
  "ms-python.python",               # Python core
  "ms-python.vscode-pylance",       # IntelliSense (Pyright engine)
  "ms-toolsai.jupyter",             # Notebooks
  "ms-python.black-formatter",      # Formatting
  "ms-python.isort",                # Import sorting
  "ms-python.debugpy",              # Debugger
  # "ms-python.python-environments",# (Optional) GUI env picker; Conda + Python already detect envs

  # --- Git / GitHub ---
  "eamodio.gitlens",                # Git superpowers
  "github.vscode-pull-request-github", # PRs & Issues

  # --- Infra / Scripting ---
  "hashicorp.terraform",            # Terraform
  "ms-vscode.powershell",           # PowerShell

  # --- Productivity / UI ---
  "usernamehw.errorlens",           # Inline errors/warnings
  "christian-kohler.path-intellisense", # Path autocomplete
  "mechatroner.rainbow-csv",        # CSV tooling
  "pkief.material-icon-theme",      # Icons

  # --- Optional (uncomment if needed) ---
  # "GitHub.copilot",               # AI assistant
  # "ms-vscode.remote-repositories",# Browse Azure repos without cloning
  "johnpapa.vscode-peacock",      # Colorize workspace
  # "ritwickdey.LiveServer",        # Web dev server
  # "esbenp.prettier-vscode",       # Web formatter
  # "wix.vscode-import-cost",       # Web bundle size hints
  # "formulahendry.code-runner",    # Multi-language quick run
  "ms-vsliveshare.vsliveshare",   # Live collaboration
  # "pnp.polacode",                 # Code screenshots
  "tomoki1207.pdf",               # PDF viewer
  "vsls-contrib.gistfs"           # Gist explorer
)

foreach ($ext in $extensions) {
  Write-Host "Installing VS Code extension: $ext"
  code --install-extension $ext --force
}
Write-Host "`n✅ All extensions installed!"
