# Upload CS336 to GitHub

## Step 1: Re-authenticate GitHub CLI (if using gh)
```bash
gh auth login
```
Follow the prompts to log in.

## Step 2: Create a new repo on GitHub

**Option A – using GitHub CLI (after auth):**
```bash
gh repo create CS336 --public --source=. --remote=origin --push
```

**Option B – using the website:**
1. Go to https://github.com/new
2. Name the repo (e.g. `CS336` or `stanford-cs336-materials`)
3. Choose Public
4. Do **not** initialize with README (you already have content)
5. Click "Create repository"

## Step 3: Initialize git and push (run from this directory)

If you created the repo manually (Option B), run:

```bash
# Remove nested .git folders so all files are included (not submodule pointers)
find . -name ".git" -type d -not -path "./.git" -exec rm -rf {} + 2>/dev/null || true

# Initialize the repo
git init

# Add everything
git add .

# Commit
git commit -m "Initial commit: Stanford CS336 course materials"

# Add your new repo as remote (replace YOUR_USERNAME and REPO_NAME with yours)
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# Push
git branch -M main
git push -u origin main
```

**Note:** Removing nested `.git` folders means you'll have one single repo with all files. You won't be able to `git pull` from the original Stanford repos to get updates. To get updates, you'd need to re-clone those repos and copy files manually.
