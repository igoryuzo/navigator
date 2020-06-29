# navigator

These installation instructions are based on the assumption that you have already installed NodeJs and PostgresSql in your system according to OS.

Instructions to run the script:

1) In the directory you wish to place the script, git clone https://github.com/ByteDown/navigator.git
2) cd navigator
3) npm install
4) Import schema.sql already having 1 user. Insert the user as per your morningstar USERNAME.
4) Create .env file. Easiest way is to rename example.env to .env and replace Morningstar and PostgresSql credentials.
5) npm start

The records will be inserted in records table.