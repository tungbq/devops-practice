import requests
import json
from datetime import datetime, timedelta
import matplotlib.pyplot as plt
import pandas as pd

# 1. Using the 'requests' library to make an HTTP GET request
def fetch_data(url):
    response = requests.get(url)
    if response.status_code == 200:
        print(f"Data fetched successfully from {url}")
        return response.json()
    else:
        print(f"Failed to fetch data. Status code: {response.status_code}")
        return None

url = "https://jsonplaceholder.typicode.com/posts"
data = fetch_data(url)

# 2. Handling JSON Data
if data:
    print(f"First Post Title: {data[0]['title']}")
    print(f"Total Posts Fetched: {len(data)}")

    # Saving JSON data to a file
    with open('posts.json', 'w') as file:
        json.dump(data, file, indent=4)

    print("Data saved to posts.json")

# 3. Using 'datetime' to work with dates and times
today = datetime.now()
one_week_ago = today - timedelta(days=7)

print(f"Today's date: {today.strftime('%Y-%m-%d')}")
print(f"One week ago: {one_week_ago.strftime('%Y-%m-%d')}")

# 4. Data Analysis with 'pandas'
# Creating a DataFrame from JSON data
if data:
    df = pd.DataFrame(data)
    print(f"DataFrame Head:\n{df.head()}")
    print(f"DataFrame Info:\n{df.info()}")

    # Filtering the DataFrame
    user_1_posts = df[df['userId'] == 1]
    print(f"Posts by User 1:\n{user_1_posts[['id', 'title']]}")

# 5. Plotting with 'matplotlib'
# Let's plot the number of posts per user
if data:
    posts_per_user = df['userId'].value_counts()
    posts_per_user.sort_index(inplace=True)

    plt.figure(figsize=(10, 5))
    posts_per_user.plot(kind='bar', color='skyblue')
    plt.title('Number of Posts per User')
    plt.xlabel('User ID')
    plt.ylabel('Number of Posts')
    plt.xticks(rotation=0)
    plt.grid(axis='y', linestyle='--')
    plt.tight_layout()

    # Save the plot to a file
    plt.savefig('posts_per_user.png')
    print("Plot saved to posts_per_user.png")

    # Show the plot
    plt.show()

# 6. Using 'pandas' for more advanced analysis
# Adding a column with the length of each post's title
if data:
    df['title_length'] = df['title'].apply(len)
    print(f"Updated DataFrame with Title Length:\n{df[['id', 'title', 'title_length']].head()}")

    # Calculate the average title length per user
    avg_title_length_per_user = df.groupby('userId')['title_length'].mean()
    print(f"Average Title Length per User:\n{avg_title_length_per_user}")
