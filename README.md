# Dotfiles

## Purpose

Create a script to provision a new Macbook. Install all the necessities. Additional provision scripts included.

## Additional Considerations

- Langauges and packages (PHP, Apache, MySQL, node, imagemagick, etc.)
- VS Code Extensions
- Enable zsh plugins manually and change theme

## Scripts

### Provision

Provision local Laravel and WP projects.

#### Usage

- `provision laravel example.com`
  - Pull example.com from Github
- `provision laravel example.com -n`
  - Create a fresh Laravel install
- `provision laravel example.com -d`
  - Delete files (db, repo, apache conf, etc)

#### Future Ideas

- Pull copy of remote db when cloning from a git repo.
- `-u` option to pull fresh copy of remote db
