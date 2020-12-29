curl -H "Authorization: token c6e34e765af240f160636bf36935acd22681edba" "https://api.github.com/repos/RyanGC93/assessment/collaborators/KyleLagerberg" -X PUT -d '{"permission":"admin"}'
curl -u "RyanGC93" https://api.github.com/repos/assesments/collaborators

curl -i -H "Authorization: token c6e34e765af240f160636bf36935acd22681edba" \
    -d '{ \
        "name": "blog", \
        "auto_init": true, \
        "private": true, \
        "gitignore_template": "nanoc" \
      }' \
    https://api.github.com/user/repos
    
## view repos
curl -i -H "Authorization: token c6e34e765af240f160636bf36935acd22681edba" \
    https://api.github.com/user/repos
    
curl -i -H "Authorization: token c6e34e765af240f160636bf36935acd22681edba" -d '{ \
        "name": "blog", \
        "auto_init": true, \
      }' \
    https://api.github.com/user/repos
    
curl -i -H "Authorization: token c6e34e765af240f160636bf36935acd22681edba" https://api.github.com/user/repos -d "{\"name\":\"sdjksdsdfddjks\", \"private\": false}"
      git init;
      touch README.md
      echo "# $1" >> README.md
      touch .gitignore
      echo "node-modules/" >> .gitignore
      echo "node-modules/" >> .gitignore
      git add -A
      git commit -m 'first commit'
      git remote add origin git@github.com:RyanGC93/sdjksdjks.git;
      # git push origin main
      git push --set-upstream origin main
      echo "Git Hub Repo Set Up Called: sdfds"
      
curl -H "Authorization: token c6e34e765af240f160636bf36935acd22681edba" "https://api.github.com/repos/RyanGC93/sdjksdjks/collaborators/KyleLagerberg" -X PUT -d '{"permission":"admin"}'

      
   
c6e34e765af240f160636bf36935acd22681edba


=================================================================
---------------------------FINISHED------------------------------
=================================================================

# Creates github repo    
curl -i -H "Authorization: token c6e34e765af240f160636bf36935acd22681edba" https://api.github.com/user/repos -d "{\"name\":\"sdjksdsdfddjks\", \"private\": false}"
      git init;
      touch README.md
      echo "# $1" >> README.md
      touch .gitignore
      echo "node-modules/" >> .gitignore
      echo "node-modules/" >> .gitignore
      git add -A
      git commit -m 'first commit'
      git remote add origin git@github.com:RyanGC93/sdjksdjks.git;
      # git push origin main
      git push --set-upstream origin main
      echo "Git Hub Repo Set Up Called: sdfds"
      
      
curl -H "Authorization: token c6e34e765af240f160636bf36935acd22681edba" "https://api.github.com/repos/RyanGC93/sdjksdjks/collaborators/KyleLagerberg" -X PUT -d '{"permission":"admin"}'