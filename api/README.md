# navigator

These installation instructions are based on the assumption that you have already installed NodeJs and PostgresSql in your system according to OS.

Instructions to run the script:

1. In the directory you wish to place the script, git clone https://github.com/ByteDown/navigator.git
2. cd navigator
3. npm install
4. create a db name "navigator" if not exits.
5. Import dump.sql (for schema with data) or schema.sql (for only db structure) already having 1 user. Insert the user as per your morningstar USERNAME.
6. Create .env file. Easiest way is to rename example.env to .env and replace Morningstar and PostgresSql credentials.
7. npm start (Node server will start running on port specified in .env)

# IN THE BROWSER
1. Open http://host/scrap to start scrapping from MorningStar. Script will start running in the background.

