# Logica's FHIR IG Base Image
This Docker image contains the FHIR Implementation Guide (IG) publisher tool and all dependencies installed. It also provides "sushi" tool for projects using FHIR Shorthand.


```
# To completely rebuild the base image from scratch:
docker build -t logicahealth/fhir-ig-base:latest --no-cache .

# To upload it:
docker push logicahealth/fhir-ig-base:latest
```

# Attribution
By Preston Lee (GitHub: @preston)

# License
Apache 2.0