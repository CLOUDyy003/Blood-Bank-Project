
---

## 📌 Database Tables

The system includes the following core tables:

### **1. blood_type**
Stores all blood group information.

### **2. blood_banks**
Represents blood bank centers with location and contact details.

### **3. donor**
Stores donor personal details, blood type, donation history, and associated blood bank.

### **4. recipient**
Stores recipient details, medical record ID, and associated blood bank.

### **5. inventory**
Tracks available blood units for each blood bank and blood type.

All tables use foreign keys to maintain data consistency.

---

## 🚀 How to Use the Database

### **1. Create a database**
```sql
CREATE DATABASE blood_bank;
USE blood_bank;
