workflow "automerge pull requests on updates" {
  on = "pull_request"
  resolves = ["automerge"]
}

workflow "automerge pull requests on reviews" {
  on = "pull_request_review"
  resolves = ["automerge"]
}

workflow "automerge pull requests on status updates" {
  on = "status"
  resolves = ["automerge"]
}

action "automerge" {
  uses = "pascalgn/automerge-action@v0.2.4"
  secrets = ["GITHUB_TOKEN"]
  env = {
    LABELS = "!WIP"
    MERGE_METHOD = "squash"
    AUTOMERGE = "automerge"
    AUTOREBASE = "automerge"
  }
}
