# How to update this app

If you want to change anything in `index.html`, follow these steps **every single time**. They prevent the problem we keep having where edits accidentally delete features that are already in the app.

## The rule
**Always start by downloading the latest file from GitHub. Every time.**

Don't trust that ChatGPT already has the latest version — even if you uploaded the file in a recent chat. Bento sometimes pushes fixes too, and those won't show up in your old chats. Long chats can also "forget" parts of the file. Re-downloading from GitHub is the only way to be sure you're starting fresh.

## Steps

### 1. Download the latest file from GitHub
1. Go to https://github.com/selainesa/Card-Database
2. Click on `index.html`
3. Click the **download icon** at the top-right of the file (downward-arrow icon, right next to the "Raw" button)
4. `index.html` will save to your Downloads folder

### 2. Open a NEW ChatGPT chat
A brand-new chat. Don't continue an old one — old chats remember the old version of the file.

### 3. Upload the file to ChatGPT
1. In the chat, click the **paperclip / attach icon** at the bottom of the message box
2. Find `index.html` in your Downloads folder, select it, and upload
3. Send this message along with the file:

```
This is my current index.html from GitHub. When I ask for a change next,
give me back the FULL updated file as a downloadable file. Never give me
just a piece. Never remove any code I didn't ask you to remove.
```

Wait for ChatGPT to confirm.

### 4. Ask for the change you want
Examples:
- *"Add a button at the top that exports a backup."*
- *"Make the table also show the date I added each card."*
- *"Change the gold color to purple."*

### 5. Check the answer BEFORE downloading
When ChatGPT gives you back the updated file, ask it these two questions in the chat:

**Question 1:** *"How many lines is this file?"*
- The current file is about **1,300 lines**.
- If ChatGPT's number is smaller, reply:
  > You gave me a smaller file. Please give me the COMPLETE file with my change added — do not remove anything.

**Question 2:** *"Does the file you gave me contain the words `supabase`, `Tesseract`, and `favicon`?"*
- All three must be **yes**.
- If any is missing, reply:
  > You removed a feature. Please give me the COMPLETE file with all the original code, plus my change.

### 6. Download the new file from ChatGPT
1. Click the file link ChatGPT gave you. It will save to your Downloads folder.
2. Make sure the file is named **`index.html`** exactly. If ChatGPT named it something else (like `index_updated.html`), rename it back to `index.html` before the next step — otherwise GitHub won't replace the old file.

### 7. Upload to GitHub
1. Go to https://github.com/selainesa/Card-Database
2. Click the **"Add file"** button (top-right of the repo file list) → **"Upload files"**
3. Drag your new `index.html` into the upload area (or click "choose your files" and pick it from Downloads)
4. Scroll down to **Commit changes**, type a short title like *"Added export button"*
5. Click the green **Commit changes** button

GitHub will replace the old `index.html` with your new one.

### 8. Test it on your phone
1. Open the app on your phone
2. **Close the tab completely**, then reopen it (don't just hit refresh — it may show a cached old version)
3. Sign in if asked
4. Check that your cards are still there and your change works

## If something looks broken
**Do not try to fix it by uploading another file.** That makes things worse.

Text Bento right away. Every old version is saved in GitHub, so as long as we catch it quickly, anything can be brought back.

## About the other file (`supabase-setup.sql`)
That's the database setup. Leave it alone unless Bento gives you new SQL to add. To run SQL: paste it into your Supabase project → **SQL Editor** → click **Run**.
