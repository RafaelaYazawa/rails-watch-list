import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["review"];

  connect() {
    console.log("hello from reviews...");
  }

  display(e) {
    console.log(e);
    this.reviewTarget.classList.toggle("d-none");
  }
}
