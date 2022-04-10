# SDK Design

I tried keeping the design pretty simple, function over form, and it allows the user to reuse many of the different elements while getting just a usable hash back.

## Returning a Hash instead of an object

I like using complex map, reduce, select and even delete_if functions in my data manipulation so any library I get I tend to prefer just receiving a hash that makes it easier for me to implement in my own models but I understand that in other languages real objects are more desirable. 

## VCR for testing

One of the things I really like about the Rspec and Ruby ecosystem is the simplicity of testing existing API end points with real payloads, I was able to obfuscate the API_KEY itself in order to show that one can fetch data and test an API live without having to risk things such as keys and passwords etc. This can become important in automating testing.

## Breaking each end point down into it's own namespace

It was important that I break each end point into it's own seperate namespace, ideally I would also limit the loading to the specific namespace someone needs but I felt this approach was sufficient to mimic the API as it stands.