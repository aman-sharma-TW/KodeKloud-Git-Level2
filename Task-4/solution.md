Que. What is Git Remote?
Sol. In Git, a remote is a reference to a remote repository — a version of your project that is hosted somewhere else, often on another machine or server.

📌 Why Use a Remote?
Remotes let you:
* Collaborate with others
* Push your local changes to a shared repo
* Pull changes others made
* Sync code between machines (e.g., dev server, staging, production)

Steps to complete the task:
1. Navigate to the repo:
*    *cd /usr/src/kodekloudrepos/beta*
2. Add new remote dev_beta
* This points to the local Git repo at /opt/xfusioncorp_beta.git.
*    *git remote add dev_beta /opt/xfusioncorp_beta.git*
* ✅ Confirm it was added:
*    *git remote -v*
* You should see:
*    *dev_beta    /opt/xfusioncorp_beta.git (fetch)*
*    *dev_beta    /opt/xfusioncorp_beta.git (push)*
3. Copy file to repo
    *cp /tmp/index.html .*
4. Add and commit the file
*    *git add index.html*
*    *git commit -m "Added index.html"*
5. Push master branch to dev_beta
*    *git push dev_beta master* 

Or you can use the script for automated process.

