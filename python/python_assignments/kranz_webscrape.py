import requests
from bs4 import BeautifulSoup

# --- Config ---
url = "https://darksouls.wiki.fextralife.com/Dark+Souls+Wiki"  # You can replace this with any site
output_file = "downloaded_videos/navbar_links.txt"

# --- Fetch the page ---
response = requests.get(url)
soup = BeautifulSoup(response.text, "html.parser")

# --- Try to find a <nav> tag or other likely navigation containers ---
nav = soup.find("nav")
if not nav:
    # Fallbacks: try common class or ID names if <nav> doesn't exist
    nav = soup.find("div", class_="navbar") or \
          soup.find("div", id="navbar") or \
          soup.find("ul", class_="nav") or \
          soup.find("header")

# --- Extract and write links ---
if nav:
    links = nav.find_all("a")
    with open(output_file, "w", encoding="utf-8") as f:
        for link in links:
            text = link.get_text(strip=True)
            href = link.get("href", "")
            if text or href:
                f.write(f"{text} -> {href}\n")
    print(f"✅ Navbar links saved to '{output_file}'")
else:
    print("❌ No navbar found on the page.")
