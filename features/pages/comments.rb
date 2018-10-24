class Books
    module Template
        REQUEST_COMMENTS = (YAML.load_file('./features/fixtures/request_comments_body.yml'))
    end

    include HTTParty

    base_uri "http://fakerestapi.azurewebsites.net/"
    format :json

    def create(title,description,pageCount,excerpt,publishDate)
        json = Template::REQUEST_COMMENTS.dup
        json['Title'] = title
        json['Description'] = description
        json['PageCount'] = pageCount
        json['Excerpt'] = excerpt
        json['PublishDate'] = publishDate

        self.class.post("/api/Books/", :header => {'Content-Type' =>'application/json'}, :body => json)
    end

    ###Get###
    def get(index =nil)
        self.class.get("/api/Books/#{index}")
    end

    ###PUT###
    def put(index,excerpt)
        json = Template::REQUEST_COMMENTS.dup
        json['excerpt'] = excerpt
        self.class.put("/api/Books/#{index}", :header => {'Content-Type' =>'application/json'}, :body => json)
    end
end