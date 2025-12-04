# IT Support Automation Scripts 🛠️

This repository serves as a portfolio of automation scripts developed to improve efficiency, consistency, and reliability across common Tier 1 and Tier 2 IT Support functions.

The focus is on using scripting (Bash, Python, PowerShell) to replace repetitive, manual tasks in Windows and Linux environments.

---

## 📂 Featured Project: Automated User Onboarding (Bash)

### `user_onboard.sh`

This script automates the process of creating a new user on a Linux system, which is a fundamental task in IT Support and System Administration.

#### Key Features:

* **User Creation:** Creates a new user with a dedicated home directory and sets the default shell to `/bin/bash`.
* **Secure Temporary Password:** Generates a 16-character secure, temporary password.
* **Mandatory Password Change:** Forces the user to change the temporary password on the first successful login for enhanced security (`passwd -e`).
* **Group Assignment:** Adds the new user to a defined default group (e.g., `staff`).
* **Activity Logging:** Records the timestamp and action taken to an internal log file (`/var/log/user_onboarding.log`) for auditing.

#### ⚙️ How to Run:

1.  Clone this repository:
    ```bash
    git clone [https://github.com/abhisheksharma-aks/it-support-scripts.git](https://github.com/abhisheksharma-aks/it-support-scripts.git)
    cd it-support-scripts
    ```
2.  Make the script executable:
    ```bash
    chmod +x user_onboard.sh
    ```
3.  Run the script with `sudo` permissions (required for user management):
    ```bash
    sudo ./user_onboard.sh
    ```

---

## 🙋‍♂️ About Me

I am an aspiring IT Support Professional continuously building skills through hands-on projects, virtual labs, and preparation for certifications like the **Google IT Support Certificate** and **Microsoft Azure AZ-900**.

Connect with me on **[https://www.linkedin.com/in/abhisheksharma1225]** or view my full profile **[https://github.com/abhisheksharma-aks]**.
