# Pharmacy Management System

This Java Swing GUI application offers a comprehensive solution for managing pharmacy operations efficiently. The system is divided into two panels: one for the admin and the other for the pharmacist, each tailored to their specific roles.

## Features

### Admin Panel
- **User Management**: Add, view, and update user details.
- **View Bills**: Access bills generated by pharmacists.

### Pharmacist Panel
- **Inventory Management**: Add, view, and update medicine details.
- **Sell Medicines**: Search and sell medicines, generate bills.
- **View Bills**: Access generated bills.
- **Profile Management**: Update pharmacist profile details.
- **Out of Stock and Expiry Tracking**: Monitor items low on stock or nearing expiry.
- **Return Management**: Handle returned items and generate return bills.

## Database Structure

The system utilizes MySQL database with the following tables:
- **bill**: Stores bill information.
- **expire**: Tracks medicine expiry dates.
- **medicine**: Manages medicine inventory.
- **out_of_stock**: Records out-of-stock items.
- **return_bill**: Logs returned items and generated return bills.
- **users**: Stores user details including roles (admin/pharmacist).

## How to Use

1. **Login**: Enter username and password to access the system.
2. **Admin Panel**: Manage users and view bills.
3. **Pharmacist Panel**: Handle inventory, sell medicines, and manage returns.

## Getting Started

1. Clone the repository.
2. Set up the MySQL database using provided schema.
3. Import the project into IntelliJ IDEA.
4. Configure database connection in `Database.java`.
5. Run the application and login with appropriate credentials.

## Contributors

- [Sajjad Ali] - Developer

## License

This project is licensed under the [MIT License](LICENSE).

## Screenshots

### Admin Panel
![login](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/5e0fad3b-1b08-4e09-b69f-cebee65ef0fa)
![Admin](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/3a3ac21d-5097-4d36-ba20-a236771afd19)
![View Bills](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/7322572d-2cc0-4175-ae93-e77b360edb5a)
![Update user](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/ab4329f2-8c67-4e49-842c-6769e77d05df)
![Add user](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/d8cdd91e-75ed-4a36-abf6-f1ebeb3c8db2)
![Logout](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/65d6b69c-6f27-4d7c-b655-4d5ebf7a793e)
![View user](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/97a4e594-b5b4-4f98-9e4b-88eec13ce833)


### Pharmacist Panel
![Pharmacist panel](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/9197011f-6cba-48dc-a338-cc2b715e5fb1)
![Add items](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/37cf8cdb-d812-4c33-ae7e-e2d490fac5c0)
![Sell Items](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/95a9a060-4549-4882-aec9-409ac73a705c)
![Return Items](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/0451965e-9e2d-486d-9046-e780240dab8c)
![expiry items](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/43d14536-10d5-4e86-898e-7588bea96613)
![Out of Stock](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/4222f2c0-24d1-468f-8624-358df590fc49)
![bill after print bill](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/389fe306-f550-4b0e-baa9-7b5522c18530)
![Return items bills](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/a3c5ebf6-ff28-4cce-ae4a-12ce68becebf)
![Return items bill](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/f9817e57-3edf-4221-9b80-5659b1746891)
![update items](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/8f77a6a9-588a-4035-b64f-32e33e2f0629)
![Profile](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/8936c57b-2288-4d95-90bc-9256cf83ea29)
![View items](https://github.com/sajjad-ali-01/Pharmacy-Management-System-in-JAVA/assets/115862736/8308b83b-65f7-43d8-904d-32c7bb7effa5)

