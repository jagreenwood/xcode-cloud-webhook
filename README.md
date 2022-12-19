# xcode-cloud-webhook

Implements a system to process [Xcode Cloud](https://developer.apple.com/xcode-cloud/) webhook events. This package is
designed to work well with Swift on the Server, including [Vapor](https://github.com/vapor) and 
[AWS Lamba](https://github.com/swift-server/swift-aws-lambda-runtime).

## Get Started

Implement a type which conforms to `XcodeCloudWebhookHandler`:

```swift
struct Handler: XcodeCloudWebhookHandler {
    func run(with payload: Payload) async throws {
        Task {
            try await Task.sleep(nanoseconds: 1_000_000_000)
            print("\(payload)")
        }
    }
}
```

Add the handler to the webhook runner:

```swift
let webhook = XcodeCloudWebhook()
await webhook.add(Handler())
```

Run the webhook:

```swift
try await webhook.run(payload)
```

> **_NOTE:_**  Payload enums are most likely incomplete at this time since the payload model is not fully documented by Apple
 and will cause a `DecodingError`. If you come across these cases, please submit a pull request 🙏.
