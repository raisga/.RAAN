import requests
from config import SYSTEM_PROMPT, MODEL, OLLAMA_API_URL

def ollama_chat(prompt=SYSTEM_PROMPT, model=MODEL):
    payload = {
        "model": model,
        "prompt": prompt,
        "stream": False
    }
    try:
        response = requests.post(OLLAMA_API_URL, json=payload, timeout=30)
        response.raise_for_status()
        data = response.json()
        return data.get("response", "[No response]")
    except Exception as e:
        return f"[Error communicating with Ollama: {e}]"