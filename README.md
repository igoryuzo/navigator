# navigator

These installation instructions are based on the assumption that you have already installed NodeJs and PostgresSql in your system according to OS.

Instructions to run the script:

1) In the directory you wish to place the script, git clone https://github.com/ByteDown/navigator.git
2) cd navigator
3) npm install
4) Import schema.sql already having 1 user. Insert the user as per your morningstar USERNAME.
4) Create .env file. Easiest way is to rename example.env to .env and replace Morningstar and PostgresSql credentials.
5) npm start

Note:
npm start will run primary file named 'companylist.csv' having all records.
npm start [batch_name] will run [batch_name].csv
Example: npm start batch_1 will run script on batch_1.csv

Till now 4 batches are supported i.e. batch_1, batch_2, batch_3, batch_4

The records will be inserted in records table.