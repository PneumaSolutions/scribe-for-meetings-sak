import React, { useState } from "react"
import { Localized, useLocalization } from "@fluent/react"
import ReactMarkdown from "react-markdown"

export function LetterList() {
  const { l10n } = useLocalization()

  let letters = []
  for (let bundle of l10n.bundles) {
    for (let [key, message] of bundle._messages) {
      if (key.startsWith("letter-")) {
        const letterId = key.substring(7)
        letters.push({ bundle, letterId, letter: message });
      }
    }
  }

  return (
    <>
      <ReactMarkdown>{l10n.getString("intro")}</ReactMarkdown>

      {letters.map(({ bundle, letterId, letter }) => {
        return (
          <>
            <h2>
              <a href={`?letter=${encodeURIComponent(letterId)}`}>
                {bundle.formatPattern(letter.attributes.name)}
              </a>
            </h2>
            <p>{bundle.formatPattern(letter.attributes.description)}</p>
          </>
        )
      })}
    </>
  )
}
