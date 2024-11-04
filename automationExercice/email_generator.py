import random
import string

def generate_fake_email(domain="example.com"):
    """Génère une adresse email fictive."""
    username = ''.join(random.choices(string.ascii_lowercase + string.digits, k=10))
    return f"{username}@{domain}"