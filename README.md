# Health Memo

## Inspiration

Hacking Health Tech – All Sci, No Fi inspired us to answer questions in health care that millions face around the world. We chose the theme "Develop Wearable Technology"

Health Memo answers the following questions:
- How should a health ecosystem be built? One that healthcare professionals and hospitals can leverage to enable better treatment and care of patients.
- How can a credible, user-friendly experience be created to engage patients?
- How should the data from different wearables be connected to build a quality database that can be used to improve the patient journey or help solve health issues?

## What it does

Let's say you are 70 years of age and recently had a heart attack. This means you have to check in with your doctor on a regular basis and share updates on your health. Remembering and summarizing past events can be hard and in these fast-paced 15-minute appointments, you might miss key details that could potentially save your life.

Health Memo gives people a way to log their health condition when they feel uneasy or when your smartwatch notices a concerning change in your vitals. The user can create memos using digital assistants and share them with your care provider when you have an appointment with them. The questions in the memo are curated to your condition and what the doctor would like to know. So in your next appointment, they can dig in deeper into the days you were feeling particularly low and ask more personal questions making appointments more productive and effective.

## How we built it

Using our experience of iOS development and a quick adaptation of Google's Text-to-Speech and Speech-to-Text APIs, we were able to create this iOS app to showcase in the prototype part of our submission.

## Challenges we ran into

Initially, we wanted to build Health Memo using just SiriKit. The limitations we came across were Siri's limited ability to either simply launch the app, or launch the app with a set of parameters. Another limitation was that Siri could not respond based on the context on the screen once Siri was invoked. Due to these limitations, implementing a conversational-style interaction with Siri was not viable, and even if it was, it would exclude other devices that run Android - hence a large user base.

So, we shifted our focus to adopt Google's Text-to-Speech and Speech-to-Text APIs. These are not only available on Andriod and iOS devices, but also have an ability to be invoked after the app is launched.

## Accomplishments that we're proud of

Health Memo makes use of the technologies that already exist out there. It takes the user experience and significantly improves it to enable millions to better keep track of their health. Using the app is as easy as launching the app through the digital assistant and asking to create a memo. Using conversational-style questions, you can answer back and the memo will be saved for you.

Many patients who we talked to said they will use Health Memo if it was available to download, makes us proud. Our attention-to-detail and thinking from the user's point-of-view has also been praised by many.

## What we learned

The primary lesson for us from this project was working in a team to identify a great amount of untapped potential in enriching people's lives when an app is executed properly with the right mindset and motivation. We also learned that creating user-centric apps is not difficult. In fact, they encourage more users and in the case of Health Memo that means a greater number of healthy people.

## What's next for Health Memo

- Currently, Health Memo is written for iOS only. We want to make it a cross-platform app soon. 
- It is also written using  Storyboards in Xcode that Apple has deprecated. Our plan is to move the project to use SwiftUI
- There is work to be done for the care provider's side of interface for Health Memo too.
- We are also constantly trying to make the app even better and starting to work on actually publishing it so more and more people can make use of this innovative - yet easy to use - app. 

We hope the judges for Hacking Health Tech see as much potential in this as we do.

## How to build, run, and use

We use [Homebrew](https://formulae.brew.sh) as our package manager.

Since Health Memo is written for iOS, here are the tools and technologies we used to develop, build, run, and test the app:

- macOS Ventura 13.0
- Xcode, Version 14.2
- iPhone 11 Simulator running iOS 14.2. Simulator Version 14.2, SimulatorKit 627, CoreSimulator 847.14
- CocoaPods, Version 1.6.3

Steps to follow:

- Clone the app: `git clone git@github.com:tahaafzal5/HealthMemo.git`
- Navigate to the project: `cd HealthMemo/`
- Install pods: `pod install`
- Open the project in Xcode. Make sure you are opening the file name `Health Memo.xcworkspace` and not `Health Memo.xcodeproj`
- Build the app: `Cmd+B`
- After making sure the iOS Simulator is installed and configured properly, run the app: `Cmd+R`

*Note: Versions, configurations, and set up process might vary depending on if you have an intel-based Mac or a Mac with Apple Silicon.*

*Note: The versions of different tools we used are list above, but dependencies might make it hard to build or run on different versions. Please make sure you have the right versions or reach out with any questions.*

Please let us know if you have any questions or troubles while building and running the app. We would be happy to answer any questions and go through any troubleshooting with you.
