import os
import mimetypes
from flask import Flask, render_template, abort, send_file

app = Flask(__name__)

BASE_DIR = os.path.join(os.path.dirname(__file__), "src", "main", "webapp")

def get_readable_size(size):
    for unit in ["B", "KB", "MB", "GB"]:
        if size < 1024:
            return f"{size:.1f} {unit}"
        size /= 1024
    return f"{size:.1f} TB"

def list_dir(dir_path):
    entries = []
    try:
        items = sorted(os.listdir(dir_path))
    except PermissionError:
        return entries
    for name in items:
        if name.startswith(".") or name == "META-INF":
            continue
        full = os.path.join(dir_path, name)
        rel = os.path.relpath(full, BASE_DIR).replace("\\", "/")
        is_dir = os.path.isdir(full)
        size = os.path.getsize(full) if not is_dir else 0
        entries.append({"name": name, "path": rel, "is_dir": is_dir, "size": size, "size_hr": "" if is_dir else get_readable_size(size)})
    entries.sort(key=lambda e: (not e["is_dir"], e["name"].lower()))
    return entries

def get_breadcrumbs(filepath):
    if not filepath:
        return [{"name": "gameroom", "path": ""}]
    parts = filepath.split("/")
    crumbs = [{"name": "gameroom", "path": ""}]
    for i, p in enumerate(parts):
        crumbs.append({"name": p, "path": "/".join(parts[:i+1])})
    return crumbs

@app.route("/")
@app.route("/<path:filepath>")
def browse(filepath=""):
    if filepath:
        target = os.path.normpath(os.path.join(BASE_DIR, filepath))
        if not target.startswith(BASE_DIR):
            abort(403)
    else:
        target = BASE_DIR
        filepath = ""

    if not os.path.exists(target):
        abort(404)

    if os.path.isfile(target):
        ext = os.path.splitext(filepath)[1].lower()
        text_exts = {".jsp", ".java", ".html", ".htm", ".css", ".js", ".xml", ".json", ".py", ".txt", ".md", ".yml", ".yaml", ".properties", ".prefs", ".mf", ".sql"}
        is_text = ext in text_exts
        try:
            with open(target, "rb") as f:
                raw = f.read()
            if is_text:
                content = raw.decode("utf-8", errors="replace")
                lang = ext.lstrip(".") if ext else "txt"
                size = len(raw)
                return render_template("file.html", filename=os.path.basename(filepath), filepath=filepath, content=content, lang=lang, size=get_readable_size(size), ext=ext[1:].upper() if ext else "FILE", breadcrumbs=get_breadcrumbs(filepath))
            else:
                return send_file(target, mimetype=mimetypes.guess_type(filepath)[0] or "application/octet-stream", as_attachment=False)
        except Exception:
            abort(500)

    entries = list_dir(target)
    bc = get_breadcrumbs(filepath) if filepath else get_breadcrumbs("")
    return render_template("home.html", entries=entries, breadcrumbs=bc, current_path=filepath)

@app.route("/download/<path:filepath>")
def download(filepath):
    full = os.path.normpath(os.path.join(BASE_DIR, filepath))
    if not full.startswith(BASE_DIR):
        abort(403)
    if not os.path.exists(full) or os.path.isdir(full):
        abort(404)
    return send_file(full, as_attachment=True)

@app.route("/raw/<path:filepath>")
def raw(filepath):
    full = os.path.normpath(os.path.join(BASE_DIR, filepath))
    if not full.startswith(BASE_DIR):
        abort(403)
    if not os.path.exists(full) or os.path.isdir(full):
        abort(404)
    mime, _ = mimetypes.guess_type(filepath)
    return send_file(full, mimetype=mime or "text/plain")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)), debug=True)

// sync @ 2026-06-14T02:06:57.595478
