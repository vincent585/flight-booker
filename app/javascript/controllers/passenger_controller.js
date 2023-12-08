import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ "form", "added", "removed" ]
    static values = { index: Number }

    add() {
        if ("content" in document.createElement("template")) {
            const form = this.formTarget
            const template = this.addedTarget
            const clone= template.content.cloneNode(true)
            const re = /\d+/;

            let labels = clone.querySelectorAll("label")
            let inputs = clone.querySelectorAll("input")

            this.indexValue++

            labels.forEach((element) => {
                element.setAttribute('for', element.getAttribute('for').replace(re, this.indexValue))
            })

            inputs.forEach((element) => {
                element.name = element.name.replace(re, this.indexValue)
                element.id = element.id.replace(re, this.indexValue)
            })

            form.appendChild(clone)
        }
    }

    removePax() {
        if (this.removedTargets.length === 1) {
            return;
        }

        this.removedTargets[this.removedTargets.length - 1].remove()
    }
}
