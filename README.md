# 🏆 IT Doubt-Solving Platform  

### 🎓 **Capstone Project – DevResolve**  
### 👨‍💻 **Authors**  
- **Varun Deep Singh** - [GitHub Profile](https://github.com/Varunsingh-21)  
- **Devarsh Limbachiya** - [GitHub Profile](https://github.com/team-member-2)  
- **Drashya Patel** - [GitHub Profile](https://github.com/team-member-3)  
- **Pratham** - [GitHub Profile](https://github.com/team-member-3)  

---

## 📌 Project Overview  
The **IT Doubt-Solving Platform** is a **bounty-based problem-solving system** where students and professionals can post their IT-related doubts, and solvers can claim them for a **monetary reward**. The platform encourages **engagement and collaboration** by allowing solvers to provide **pre-claim reactions**, ensuring doubts are well-defined before being claimed.  

## 🎯 Key Features  
✅ **Doubt Posting with Bounty System** – Posters submit their doubts and set a bounty.  
✅ **Solver Reactions Before Claiming** – Solvers can react (e.g., "Not Paid Enough," "Too Less Context").  
✅ **Real-Time Chat for Doubt Resolution** – Posters and solvers communicate efficiently.  
✅ **Escrow-Based Payment System** – Bounties are securely held and released after resolution.  
✅ **Reputation & Ratings** – Solvers earn reputation based on performance.  
✅ **Dispute Handling** – Admins review and resolve disputes fairly.  

## 🛠️ Tech Stack  
- **Frontend**: React.js, TailwindCSS  
- **Backend**: Node.js, Express.js  
- **Database**: PostgreSQL  
- **Authentication**: JWT (JSON Web Tokens) + OAuth (Google/GitHub)  
- **Real-Time Communication**: WebSockets (Socket.io)  
- **Payments**: Stripe (Escrow-Based System)  
- **File Storage**: AWS S3 (For Chat Logs)  

## 🚀 How It Works  
1. **Users Sign Up/Login** – Users register as **posters** or **solvers**.  
2. **Posting a Doubt** – Posters submit doubts with a **bounty amount**.  
3. **Solver Reactions** – Solvers react with feedback (e.g., "Not Paid Enough").  
4. **Claiming a Doubt** – A solver **claims** the doubt and opens a **chat session**.  
5. **Chat & Resolve** – Poster and solver discuss via **real-time chat**.  
6. **Payment & Ratings** – If solved, the **bounty is released**, and solvers get **ratings**.  
7. **Dispute Handling** – If unresolved, the **admin steps in** for dispute resolution.  

## 📦 Installation & Setup  

### **1️⃣ Clone the Repository**
```bash
git clone https://github.com/your-username/it-doubt-solving-platform.git
cd it-doubt-solving-platform
