## List installed packages             
```                             
brew list --formula > packages.txt
```
## List installed casks
```
brew list --cask > casks.txt
```                               
## Install packages 
```
xargs brew install < packages.txt     
```                                    
## Install casks
```
xargs brew install < casks.txt        
``` 

