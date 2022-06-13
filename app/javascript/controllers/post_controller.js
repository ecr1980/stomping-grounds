import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [ "saying", "sayingButton", "photo", "photoButton" ]

  showPostForm(){
    this.sayingTarget.style.display='block';
    this.sayingButtonTarget.style.background="rgb(65, 66, 65)";
    this.photoTarget.style.display='none';
    this.photoButtonTarget.style.background="rgb(37, 37, 37 )";
  }

  showPhotoForm(){
    this.photoTarget.style.display='block';
    this.photoButtonTarget.style.background="rgb(65, 66, 65)";
    this.sayingTarget.style.display='none';
    this.sayingButtonTarget.style.background="rgb(37, 37, 37 )";
  }
}
