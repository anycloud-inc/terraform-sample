terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  # 任意のプロジェクトに変更
  project     = "test-terraform-343107"
  region      = "asia-northeast1"
  # 配置したサービスアカウントキーのパスを指定
  credentials = file("service-account.json")
}

resource "google_sql_database_instance" "instance" {
  # 任意の名前に変更
  name             = "sample-instance"
  database_version = "MYSQL_8_0"
  region      = "asia-northeast1"

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database" "database" {
  # 任意の名前に変更
  name     = "sample-database"
  instance = google_sql_database_instance.instance.name
}