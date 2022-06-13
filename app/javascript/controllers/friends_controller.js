import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [
    "requests",
    "pending",
    "friends",
    "available"
  ]

  toggleRequests(){
    if (this.requestsTarget.style.display == "")
      this.requestsTarget.style.display = "none"
    else
      this.requestsTarget.style.display = ""
  }

  togglePending(){
    if (this.pendingTarget.style.display == "")
      this.pendingTarget.style.display = "none"
    else
      this.pendingTarget.style.display = ""
  }

  toggleFriends(){
    if (this.friendsTarget.style.display == "")
      this.friendsTarget.style.display = "none"
    else
      this.friendsTarget.style.display = ""
  }

  toggleAvailable(){
    if (this.availableTarget.style.display == "")
      this.availableTarget.style.display = "none"
    else
      this.availableTarget.style.display = ""
  }


}