import sqlite3

conn = sqlite3.connect('shop.db')
c = conn.cursor()

def createBill(customer_id, cashier_id, date):
    with conn:
        c.execute(f'''INSERT INTO bill(customer_id,cashier_id, purchase_datetime)
VALUES({customer_id}, {cashier_id}, {date});''')

def create_bill_line(bill_id, name, quantity):
    with conn:
        c.execute(f'''INSERT INTO bill_line (bill_id, product_id, quantity)
VALUES({bill_id}, {name}, {quantity})''')
                  
def display_bill(bill_id):
    with conn:
        c.execute(f'''SELECT cashier_id, purchase_datetime, first_name, last_name,SUM(quantity * price) as total FROM bill
JOIN bill_line on bill_id = bill.id
JOIN product on product_id = product.id
JOIN customer ON customer_id = customer.id
WHERE bill.id = {bill_id};''')
        res = c.fetchall()
        print(res)

def display_bill_line(bill_id):
    with conn:
        c.execute(f'''SELECT name, price, quantity, price * quantity as product_total FROM bill
JOIN bill_line on bill_id = bill.id
JOIN product on product_id = product.id
WHERE bill.id = {bill_id};''')
        res = c.fetchall()
        print(res)

while True:
    choice = int(input('''Shop\n0) exit \n1) make order \n2) add product to order 
3) display bill by bill id 
Enter number:'''))
    if choice == 0:
        break
    elif choice == 1:
        customer_id = input('Enter customer id: ')
        cashier_id = input('Enter cashier id: ')
        date = input('Enter date: ')
        createBill(customer_id, cashier_id, date)
    elif choice == 2:
        bill_id = input('Bill id: ')
        name = input('Product: ')
        quantity = input('Quantity: ')
        create_bill_line(bill_id, name, quantity)
    elif choice == 3:
        bill_id = int(input('Enter bill id: '))
        display_bill(bill_id)
        display_bill_line(bill_id)
