const Twitter = require('twitter-lite');

(async function() {
    const user = new Twitter({
        consumer_key: "APIKEYHERE",
        consumer_secret: "APISECRETKEYHERE",
    });

    try {
        let response = await user.getBearerToken();
        const app = new Twitter({
            bearer_token: response.access_token,
        });

        // Search for recent tweets
        response = await app.get(`/search/tweets`, {
            q: "bruins", 
            lang: "en",    
            count: 100,  
        });

        for (tweet of response.statuses) {
            console.dir(tweet.text);
        }
    } catch(e) {
        console.log("There was wit the API");
        console.dir(e);
    }
})();