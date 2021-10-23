import os
from dotenv import load_dotenv
import tweepy


env_path = os.path.join(os.path.dirname(__file__), '../.env')
load_dotenv(os.path.normpath(env_path))

# auth tweetpy
auth = tweepy.OAuthHandler(os.environ["API_KEY"], os.environ["API_SECRET"])
auth.set_access_token(os.environ["ACCESS_TOKEN"],
                      os.environ["ACCESS_TOKEN_SECRET"])

api = tweepy.API(auth)
api.update_status("Tweet from API")
