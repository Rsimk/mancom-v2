resource "azurerm_eventgrid_system_topic" "man_doc_upload" {
  name                   = "man-documents-upload-topic-${var.env_prefix}"
  resource_group_name    = azurerm_resource_group.rg.name
  location               = var.location
  source_arm_resource_id = azurerm_storage_account.manbldoc.id
  topic_type             = "Microsoft.Storage.StorageAccounts"
}

# resource "azurerm_eventgrid_event_subscription" "document-upload" {
#  name  = "document-upload"
#  scope = azurerm_resource_group.rg.id

#  retry_policy {
#    max_delivery_attempts = 10
#    event_time_to_live    = 1440
#  }


#  webhook_endpoint {
#    url                               = "https://man-documents.metasite.lt/webhooks/documents/sync"
#    max_events_per_batch              = 10
#    preferred_batch_size_in_kilobytes = 1024
#  }

#  advanced_filter {
#    string_begins_with {
#      key = "Subject"
#      values = [
#        "/blobServices/default/containers/documents/blobs/dev/uploads/documents/morningstar",
#        "/blobServices/default/containers/documents/blobs/dev/uploads/documents/restricted_consumption",
#        "/blobServices/default/containers/documents/blobs/dev/uploads/documents/require_approval",
#        "/blobServices/default/containers/documents/blobs/dev/uploads/documents/bulk_upload",
#        "/blobServices/default/containers/documents/blobs/dev/uploads/documents/xbus",
#      ]
#    }

#    string_ends_with {
#      key = "Subject"
#      values = [
#        ".csv",
#        ".doc",
#        ".xlsm",
#        ".txt",
#        ".zip",
#        ".xlsx",
#        ".xls",
#        ".pptx",
#        ".docx",
#        ".ppt",
#        ".png",
#        ".odt",
#        ".ods",
#        ".odp",
#        ".msg",
#        ".jpg",
#        ".jpeg",
#        ".pdf",
#      ]
#    }
#  }
#}

