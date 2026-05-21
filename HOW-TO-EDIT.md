# How to update this app

If you want to change anything in `index.html`, follow these steps **every single time**. They prevent the problem we keep having where edits accidentally delete features that are already in the app.

## The rule
**Always copy the file FROM GITHUB first. Never reuse a file from an old ChatGPT chat.**

## Steps

### 1. Get the latest file from GitHub
1. Go to https://github.com/selainesa/Card-Database
2. Click on `index.html`
3. Click the **Raw** button (top-right of the file)
4. Click anywhere in the code
5. Press **Ctrl + A** to select everything
6. Press **Ctrl + C** to copy it
7. Close that tab

### 2. Open a NEW ChatGPT chat
A brand-new chat. Not an old one — old chats still remember the old version of the file and will hand it back to you.

### 3. Send ChatGPT this exact message
Paste this into ChatGPT, replacing `[PASTE FILE HERE]` with the file you just copied from GitHub:

```
This is the latest version of my index.html on GitHub. Do not change anything
yet — just confirm you have it. When I ask for a change next, give me back the
FULL updated file every time. Never give me just a piece. Never remove any
code I didn't ask you to remove.

Here is the file:

[PASTE FILE HERE]
```

Wait for ChatGPT to confirm.

### 4. Ask for the change you want
Examples:
- *"Add a button at the top that exports a backup."*
- *"Make the table also show the date I added each card."*
- *"Change the gold color to purple."*

### 5. Check the answer BEFORE uploading
When ChatGPT gives you back the file, do these two checks:

**Check 1 — Line count.** Ask ChatGPT: *"How many lines is this file?"*

- The current file is about **1,300 lines**.
- If the new one is **smaller**, something got cut. Reply:
  > You gave me a smaller file. Please give me the COMPLETE file again with my change added — do not remove anything.

**Check 2 — Feature words.** In the new file from ChatGPT, press **Ctrl + F** and search for each of these. **All three must show a result:**
1. `supabase`
2. `Tesseract`
3. `favicon`

If any are missing, ChatGPT deleted a feature. Reply with the same wording as Check 1.

### 6. Upload to GitHub
1. Go back to https://github.com/selainesa/Card-Database
2. Click on `index.html`
3. Click the **pencil icon** at the top-right of the file (says *"Edit this file"* when you hover)
4. Click inside the code box, press **Ctrl + A**, then **Delete**
5. Paste the new file
6. Scroll down to **Commit changes**, type a short title like *"Added export button"*
7. Click the green **Commit changes** button

### 7. Test it on your phone
1. Open the app on your phone
2. **Close the tab completely**, then reopen it (don't just hit refresh — it may show a cached old version)
3. Sign in if asked
4. Check that your cards are still there and your change works

## If something looks broken
**Do not try to fix it by uploading another file.** That makes things worse.

Text Bento right away. Every old version is saved in GitHub, so as long as we catch it quickly, anything can be brought back.

## About the other file (`supabase-setup.sql`)
That's the database setup. Leave it alone unless Bento gives you new SQL to add. To run SQL: paste it into your Supabase project → **SQL Editor** → click **Run**.
