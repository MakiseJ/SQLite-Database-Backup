# Database Backup

@author: Joey Chen

Hi! this is a database backup programm.
It can backup your Database as long as you give your database file for it.

## Useage:

Before using this backup, please put your db file under the current folder.

Use your terminal, change to the current folder. Command is as follows:

#### java -jar DatabaseBackup.jar __dbName.db__ [--noinsert]

- __dbName__ is your database file name.
- You can use optional parameter __--noinsert__ to create a db only with same empty tables.

Typing in "java -jar DatabaseBackup.jar" also works, but you also need to provide db file later.

If you have better code structure based on this project, please let me know.
