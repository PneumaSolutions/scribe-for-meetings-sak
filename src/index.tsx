import React from "react"
import ReactDOM from "react-dom"

import { AppLocalizationProvider } from "./l10n"
import { App } from "./App"

import "bootstrap/dist/css/bootstrap.css"
import "./index.css"

ReactDOM.render(
  <AppLocalizationProvider>
    <App />
  </AppLocalizationProvider>,
  document.getElementById("root")
)
