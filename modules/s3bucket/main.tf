resource "aws_s3_bucket" "rs" {
  bucket = "revsan-bucket-1520"
  acl = "private"

  tags = {
    environment = "dev"
  }
}

resource "aws_s3_bucket_object" "testobject" {
  bucket = "revsan-bucket-1520"
  key = "testfile"
  source = "/testfolder/hello.txt"

  etag = "${filemd5("/testfolder/hello.txt")}"


}
