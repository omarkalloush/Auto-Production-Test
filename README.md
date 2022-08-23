# Auto-Production-Test
These Bash scripts were written to make the release process much more eaiser.

Requirements:
    
   - Github account configured on the local machine
     that has access and privilage to release the 
     Repositories
     
   - Git Commands
   
   - Github CLI

   Run the sshUrl_list.sh and specifiy the name of the Organization or User you want to issue the
release from, then you'll acquire the text file that contains the repositories ssh links. 

   After that, run the release.sh script and provide it with a release number so it can automatically
generate release tag and release title.

---
