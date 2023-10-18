#!/bin/bash


gt=$github_token
gh_username=$github_username
project_dir=Desktop/projects
repo_name=$1


create_dir() {
    cd
    cd $project_dir
    mkdir $repo_name
    cd $repo_name/
    git init
    git remote add origin https://github.com/$gh_username/$repo_name.git
    git branch -M main
    touch README.md
    git add README.md
    git commit -m "initial commit"
    git push -u origin main
    echo "done initializing the repo...happy coding!"
}
create_repo() {
   curl -L \
    -X POST \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer $gt" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
        https://api.github.com/user/repos \
    -d '{"name": "'"$repo_name"'", "description":"This is your first repo!","homepage":"https://github.com","private":false,"is_template":true}'
}

create_repo
create_dir
