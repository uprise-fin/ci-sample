from app import app

client = app.test_client()


def test_root():
    assert client.get(
        "/").get_data(as_text=True) == "Hello World!! - from Flask"
