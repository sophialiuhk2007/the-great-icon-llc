# 🚀 Deployment Guide for The Great Icon LLC Website

This guide will help you deploy your website to GitHub Pages with custom domain support.

## 📋 Prerequisites

- GitHub account
- Git installed on your computer
- Custom domain (thegreaticonllc.com) registered and ready for DNS configuration

## 🏗️ Step 1: Create GitHub Repository

1. Go to [GitHub](https://github.com) and create a new repository
2. Name it `the-great-icon-llc` (or your preferred name)
3. Make it public (required for free GitHub Pages)
4. Don't initialize with README (we already have one)

## 💻 Step 2: Initialize Git and Push to GitHub

Run these commands in your project directory:

```bash
# Navigate to your project directory
cd "/Users/mw/Desktop/The Great Icon LLC"

# Initialize git repository
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: The Great Icon LLC website"

# Add your GitHub repository as remote (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/the-great-icon-llc.git

# Push to GitHub
git push -u origin main
```

## ⚙️ Step 3: Configure GitHub Pages

1. Go to your repository on GitHub
2. Click on **Settings** tab
3. Scroll down to **Pages** section in the left sidebar
4. Under **Source**, select "Deploy from a branch"
5. Choose **main** branch and **/ (root)** folder
6. Click **Save**

## 🌐 Step 4: Configure Custom Domain

### In GitHub:

1. In the **Pages** settings, enter `thegreaticonllc.com` in the custom domain field
2. Check "Enforce HTTPS" (recommended)
3. GitHub will automatically create/update the CNAME file

### In Your Domain Registrar:

Add these DNS records for your domain:

```
# A Records (GitHub Pages IP addresses)
Type: A, Name: @, Value: 185.199.108.153
Type: A, Name: @, Value: 185.199.109.153
Type: A, Name: @, Value: 185.199.110.153
Type: A, Name: @, Value: 185.199.111.153

# CNAME Record for www subdomain
Type: CNAME, Name: www, Value: YOUR_USERNAME.github.io
```

## 🔄 Step 5: Wait for Deployment

- GitHub Pages deployment typically takes 5-10 minutes
- DNS propagation can take up to 24-48 hours
- You can check deployment status in the **Actions** tab of your repository

## 🧪 Step 6: Test Your Website

1. **GitHub Pages URL**: `https://YOUR_USERNAME.github.io/the-great-icon-llc`
2. **Custom Domain**: `https://thegreaticonllc.com` (after DNS propagation)

## 🔄 Step 7: Future Updates

To update your website:

```bash
# Make your changes to the files
# Then commit and push:

git add .
git commit -m "Update website content"
git push origin main
```

The website will automatically redeploy within a few minutes.

## 🛠️ Local Development

To test your website locally before deploying:

```bash
# Option 1: Use the provided script
./serve.sh

# Option 2: Python HTTP server
python3 -m http.server 8000

# Option 3: If you have Node.js
npx serve

# Option 4: If you have PHP
php -S localhost:8000
```

Then visit `http://localhost:8000` in your browser.

## 📊 Monitoring and Analytics

Consider adding:

- **Google Analytics** for website traffic analysis
- **Google Search Console** for SEO monitoring
- **GitHub Insights** for repository statistics

## 🆘 Troubleshooting

### Common Issues:

1. **404 Error**: Check that your repository is public and index.html is in the root
2. **Custom Domain Not Working**: Verify DNS records and wait for propagation
3. **HTTPS Issues**: Ensure "Enforce HTTPS" is enabled in GitHub Pages settings
4. **Changes Not Showing**: Clear browser cache or check deployment status in Actions

### Support Resources:

- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Custom Domain Configuration](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site)

## ✅ Checklist

- [ ] GitHub repository created
- [ ] Code pushed to repository
- [ ] GitHub Pages configured
- [ ] Custom domain added to GitHub
- [ ] DNS records configured
- [ ] Website accessible via custom domain
- [ ] HTTPS enforced
- [ ] Local development environment working

## 🎉 Success!

Your website should now be live at `https://thegreaticonllc.com`!
