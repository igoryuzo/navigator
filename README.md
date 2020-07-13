# navigator-master-stock-api

These installation instructions are based on the assumption that you have already installed NodeJs and PostgresSql in your system according to OS.

Instructions to run the script:

1. git clone -b polygon https://github.com/ByteDown/navigator.git
2. cd navigator-master-stock-api
3. npm install
4. Create .env file. Easiest way is to rename example.env to .env and replace PostgresSql credentials.
5. create a db name "navigator" if not exits
6. create table "stocks" with provided schema as in dump.sql
7. nodemon / npm start

Note:
The stocks records will be inserted in stocks table.
