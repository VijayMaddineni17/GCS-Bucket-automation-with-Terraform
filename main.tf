#Bucket to store website

resource "google_storage_bucket" "website" {
    name ="my-first-teraform-proj-1"
    location = "US"
}

#Make objects public
resource "google_storage_object_access_control" "public_rule" {
    bucket = google_storage_bucket.website.name
    object = google_storage_bucket_object.static_site_src.name
    role   = "READER"
    entity = "allUsers"
}

#Upload Html file to bucket
resource "google_storage_bucket_object" "static_site_src" {
    name="index.html"
    source = "../website/index.html"
    bucket = google_storage_bucket.website.name
}

