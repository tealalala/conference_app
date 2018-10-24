require 'Unirest'
require 'awesome_print'

### Speakers
# index
# response = Unirest.get('localhost:3000/api/speakers/')

# show
# response = Unirest.get('localhost:3000/api/speakers/9')



### Meetings
# index
# response = Unirest.get('localhost:3000/api/meetings')

# show
response = Unirest.get('localhost:3000/api/meetings/2')


### print
ap response.body
