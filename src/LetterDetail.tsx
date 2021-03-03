import React, { useState } from "react"
import { Pattern, ComplexPattern, Expression, SelectExpression, VariableReference } from "@fluent/bundle/esm/ast.js"
import { Localized, useLocalization } from "@fluent/react"
import ReactMarkdown from "react-markdown"

interface LetterDetailProps {
  letterId: string
}

type Field = {
  name: string
  label: string
  value: string
  setValue: (value: string) => void
}

export function LetterDetail({ letterId }: LetterDetailProps) {
  const { l10n } = useLocalization()
  const letterKey = `letter-${letterId}`
  const bundle = l10n.getBundle(letterKey)
  if (!bundle) {
    throw new Error("couldn't find bundle")
  }
  const letter = bundle.getMessage(letterKey)
  if (!letter) {
    throw new Error("couldn't find letter")
  }
  const bodyPattern = letter.attributes.body
  if (!bodyPattern) {
    throw new Error("couldn't find body")
  }

  const findLabel = (name: string): string => {
    const key = `label-${name}`
    const pattern = letter.attributes[key]
    if (pattern) {
      return bundle.formatPattern(pattern)
    }
    const labelBundle = l10n.getBundle(key)
    if (labelBundle) {
      const message = labelBundle.getMessage(key)
      if (message && message.value) {
        return bundle.formatPattern(message.value)
      }
    }
    throw new Error(`couldn't find label for ${name}`);
  }

  let subjectPatterns: Array<Pattern> = []
  for (let attributeName in letter.attributes) {
    if (attributeName.startsWith("subject-")) {
      const pattern = letter.attributes[attributeName]
      subjectPatterns.push(pattern)
    }
  }

  let [subjectPatternIndex, setSubjectPatternIndex] = useState(0)

  let fields: Array<Field> = []

  const hasField = (name: string): boolean => {
    for (let field of fields) {
      if (field.name === name) {
        return true
      }
    }

    return false
  }

  const addField = (name: string) => {
    if (hasField(name)) {
      return
    }

    const label = findLabel(name)
    const [value, setValue] = useState<string>("")
    fields.push({ name, label, value, setValue })
  }

  const findFieldsInVariableReference = (ref: VariableReference) => {
    addField(ref.name)
  }

  const findFieldsInSelectExpression = (expr: SelectExpression) => {
    findFieldsInExpression(expr.selector)
    for (let variant of expr.variants) {
      findFieldsInPattern(variant.value)
    }
  }

  const findFieldsInExpression = (expr: Expression) => {
    if (expr.type === "select") {
      findFieldsInSelectExpression(expr as SelectExpression)
    } else if (expr.type === "var") {
      findFieldsInVariableReference(expr as VariableReference)
    }
  }

  const findFieldsInPattern = (pattern: Pattern) => {
    if (!pattern.length) {
      return
    }
    for (let element of (pattern as ComplexPattern)) {
      if ((element as any).type) {
        findFieldsInExpression(element as Expression)
      }
    }
  }

  for (let pattern of subjectPatterns) {
    findFieldsInPattern(pattern)
  }
  findFieldsInPattern(bodyPattern)

  let substitutions: Record<string, string> = {}
  for (let field of fields) {
    const value = field.value ? field.value : `[${field.label}]`
    substitutions[field.name] = value
  }
  const bodyMarkdown = bundle.formatPattern(bodyPattern, substitutions)

  let subjectOptions = []
  for (let i = 0; i < subjectPatterns.length; ++i) {
    subjectOptions.push(<option value={`${i}`}>{bundle.formatPattern(subjectPatterns[i], substitutions)}</option>)
  }

  const copySubject = async () => {
    const subject = bundle.formatPattern(subjectPatterns[subjectPatternIndex], substitutions)
    await navigator.clipboard.writeText(subject)
    window.alert(l10n.getString("copied", null, "Copied to clipboard"))
  }

  const copyBody = async () => {
    const bodyHtml = (document.querySelector("#letter-body") as HTMLElement).innerHTML
    const bodyMarkdownBlob = new Blob([bodyMarkdown], {type: "text/plain"})
    const bodyHtmlBlob = new Blob([bodyHtml], {type: "text/html"})
    const bodyClipboardItem = new (window as any).ClipboardItem({"text/html": bodyHtmlBlob, "text/plain": bodyMarkdownBlob})
    try {
      await (navigator.clipboard as any).write([bodyClipboardItem])
    } catch (e) {
      await navigator.clipboard.writeText(bodyMarkdown)
    }
    window.alert(l10n.getString("copied", null, "Copied to clipboard"))
  }

  return (
    <>
      <h1>{bundle.formatPattern(letter.attributes.name)}</h1>
      <p>{bundle.formatPattern(letter.attributes.description)}</p>

      <h2><Localized id="customize-letter-heading">Customize your letter</Localized></h2>
      <p><Localized id="customize-letter-instructions" /></p>

      {fields.map(({ name, label, value, setValue }) => {
        return (
          <>
            <div>
              <label htmlFor={name}>
                {label}
              </label>
            </div>
            <div>
              {(name === "gender") ? (
                <select id={name} name={name} value={value} onChange={evt => setValue(evt.target.value)}>
                  <option value="">{l10n.getString("select-unset-option", null, "Please choose")}</option>
                  <option value="male">{l10n.getString("gender-option-male", null, "male")}</option>
                  <option value="female">{l10n.getString("gender-option-female", null, "female")}</option>
                  <option value="other">{l10n.getString("gender-option-other", null, "other")}</option>
                </select>
              ) : (
                <input id={name} name={name} value={value} onChange={evt => setValue(evt.target.value)} />
              )}
            </div>
          </>
        )
      })}

      <h1><Localized id="sample-letter-heading">Sample letter</Localized></h1>
      <p><Localized id="sample-letter-instructions" /></p>

      <div>
        <label htmlFor="subject"><Localized id="label-subject">Subject</Localized></label>
      </div>
      <div>
        <select id="subject" name="subject" value={`${subjectPatternIndex}`} onChange={evt => setSubjectPatternIndex(parseInt(evt.target.value))}>
          {subjectOptions}
        </select>
      </div>

      <div>
        <button type="button" className="btn btn-primary" onClick={copySubject}><Localized id="copy-subject-button">Copy subject</Localized></button>
        <button type="button" className="btn btn-primary" onClick={copyBody}><Localized id="copy-body-button">Copy body</Localized></button>
      </div>

      <div id="letter-body">
        <ReactMarkdown>{bodyMarkdown}</ReactMarkdown>
      </div>

      <p><a href="./"><Localized id="try-another-letter">Try another letter</Localized></a></p>
    </>
  )
}
