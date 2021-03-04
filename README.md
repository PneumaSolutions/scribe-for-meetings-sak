# Scribe for Meetings Self-Advocacy Kit

Scribe for Meetings is the first service to allow online webinar and meeting presenters to share accessible slide content with print disabled participants.

If you want more information, [click here for our Scribe for Meetings page.](https://pneumasolutions.com/products/scribe-for-meetings/)

The Self-Advocacy Kit (SAK) is a set of pre-written letters to help people advocate for Scribe for Meetings. The official instance of the web application is at <https://sak.scribeformeetings.com/>.

## How it works

The SAK application is a client-side JavaScript application using React. It uses Mozilla's [Fluent](https://www.projectfluent.org/) project both to make the user interface localizable and to provide a declarative format for the customizable letters. The second use of Fluent is admittedly a bit unusual, but we hope it will ease the maintenance of the SAK. Basically, each SAK letter is a single Fluent message with several attributes. At run time, we traverse the subject and body attributes to find the user-customizable fields, then look up labels for those fields both globally and within the message attributes. There are already 10 letters, of varying complexity, so looking at those should clarify how this works.

## Running locally

Assuming you have a reasonably recent version of Node.js installed, just run these commands in the root of your checkout:

```
npm install
npm start
```

The app will then be available at http://localhost:1234/

Note that the "copy to clipboard" functionality only works if you're accessing the app over SSL or on localhost.
