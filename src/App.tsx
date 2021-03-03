import React, { useState } from "react"
import { LetterList } from "./LetterList"
import { LetterDetail } from "./LetterDetail"

export function App() {
  let [letter] = useState(() => {
    if (window.location.search) {
      const params = new URLSearchParams(window.location.search)
      const letter = params.get("letter") as string|undefined|null
      if (letter) {
        return letter
      }
    }
    return null
  })

  return letter ? <LetterDetail letterId={letter} /> : <LetterList />
}
