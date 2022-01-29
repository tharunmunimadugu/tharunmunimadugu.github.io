global user_id_db;
global user_password_db;
global admin_id_db;
global admin_password_db;

def user_login(user_id,user_password):
	if user_id==user_id_db and user_password==user_password_db:
		print("LOGIN SUCCESSFUL")
	else:
		print("INCORRECT USER ID OR PASSWORD")




def admin_login(admin_id,admin_password):
	if admin_id==admin_id_db and admin_password==admin_password_db:
		print("LOGIN SUCCESSFUL")
	else:
		print("INCORRECT USER ID OR PASSWORD")

def place_order(order_id,stock_name,order_quantity,order_type,executed_qty,price,order_status,order_date):

def market_status(status_market,order_id,stock_name,order_quantity,order_type,executed_qty,price,order_status,order_date):
	if status_market=='OPEN':
		place_order(order_id,stock_name,order_quantity,order_type,executed_qty,price,order_status,order_date)
	else:
		exit()


