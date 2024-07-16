import sys
import json
import requests

source_lang = "EN"
target_lang = sys.argv[1]

text = "".join(sys.stdin.readlines())
with open("deepl_api.json") as f:
    API_KEY = json.load(f)["key"]

# パラメータの指定
params = {
    "auth_key": API_KEY,
    "text": text,
    "source_lang": source_lang,  # 翻訳対象の言語
    "target_lang": target_lang,  # 翻訳後の言語
    "tag_handling": "html",
}

# リクエストを投げる
request = requests.post(
    "https://api.deepl.com/v2/translate", data=params
)  # URIは有償版, 無償版で異なるため要注意
result = request.json()

for block in result["translations"]:
    print(block["text"], end="")
