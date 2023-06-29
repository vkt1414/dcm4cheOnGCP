## This is an attempt to run slim on CloudRun Platform

```sh
gcloud run deploy slim2 \
    --image=vamsithiriveedhi/slim \
    --allow-unauthenticated \
    --port=3000 \
    --cpu=8 \
    --memory=16384Mi \
    --min-instances=0 \
    --max-instances=3 \
    --platform=managed \
    --region=us-central1;
