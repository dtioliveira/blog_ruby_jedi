Admin.where(email: "admin1@example.com").first_or_create(password: "12345678", password_confirmation: "12345678")
