# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"


pin_all_from "app/javascript/custom", under: "custom"
pin "perfect-scrollbar", to: "https://ga.jspm.io/npm:perfect-scrollbar@1.5.5/dist/perfect-scrollbar.esm.js"


pin "lit", to: "https://ga.jspm.io/npm:lit@3.1.1/index.js"
pin "@lit/reactive-element", to: "https://ga.jspm.io/npm:@lit/reactive-element@2.0.3/reactive-element.js"
pin "lit-element/lit-element.js", to: "https://ga.jspm.io/npm:lit-element@4.0.3/lit-element.js"
pin "lit-html", to: "https://ga.jspm.io/npm:lit-html@3.1.1/lit-html.js"
pin "lit-html/is-server.js", to: "https://ga.jspm.io/npm:lit-html@3.1.1/is-server.js"
pin_all_from "app/javascript/lit", under: "lit"

pin "chartkick", to: "https://ga.jspm.io/npm:chartkick@5.0.1/dist/chartkick.esm.js"
pin "Chart.bundle", to: 'Chart.bundle.js'