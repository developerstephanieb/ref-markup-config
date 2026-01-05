# ==============================================================================
# REF-SERIES AUTOMATION
# ==============================================================================

# 1. SETUP
# Creates the standard directory structure for a new Ref-Series repo.
# Run this immediately after cloning/creating the repo.
init:
	@echo "Initializing Ref-Series structure..."
	@mkdir -p 99-resources
	@mkdir -p _drafts
	@mkdir -p _scratch
	@mkdir -p _templates
	@touch _scratch/.gitkeep
	@echo "- [ ] " > _drafts/TODO.md
	@echo "Done. Directory structure created."

# 2. CLEANUP
# Wipes the contents of the _scratch directory but keeps the folder.
# Useful for resetting your workspace after testing snippets.
clean-scratch:
	@echo "Cleaning _scratch directory..."
	@rm -rf _scratch/*
	@touch _scratch/.gitkeep
	@echo "Scratchpad cleared."

# 3. AUDIT
# Count the number of units and modules.
stats:
	@echo "Project Statistics:"
	@echo "Units: $$(find . -maxdepth 1 -type d -name '[0-9]*' | wc -l | xargs)"
	@echo "Modules: $$(find . -name '[0-9]*.md' | wc -l | xargs)"

# 4. HELP
# Lists available commands.
help:
	@echo "Available commands:"
	@echo "  make init          - Create standard directory structure"
	@echo "  make clean-scratch - Delete all files in _scratch/"
	@echo "  make stats         - Show count of Units and Modules"