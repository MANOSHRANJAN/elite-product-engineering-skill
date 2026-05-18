# Mobile and Play Store Reference

Use this for Android, React Native, Flutter, Expo, Capacitor, or Play Store launch work.

## App Readiness

- Confirm package/application id, app name, versioning, build variants, signing, environment config, and release channel.
- Verify login, onboarding, core value flow, purchase/subscription flow, notifications, deep links, offline/error states, and account deletion if applicable.
- Check crash reporting, analytics, privacy consent, and support/contact links.
- Test on at least one small-screen and one modern large-screen profile when UI changes are involved.

## Play Store Metadata

- Prepare app title, short description, full description, category, tags, contact email, privacy policy URL, screenshots, feature graphic, and content rating.
- Make the first screenshots show the actual product value, not generic splash screens.
- Keep claims specific and supportable.
- Align description, screenshots, and in-app behavior so review does not flag mismatch.

## Policy-Sensitive Areas

- Data collection and sharing must match the privacy policy and Play Console Data safety form.
- Permissions must be necessary and explained by user-visible functionality.
- Health, finance, children, location, background services, VPN, accessibility, gambling, crypto, and AI-generated content need extra policy review.
- Provide account deletion flow or clear web deletion path when accounts are created.
- Avoid misleading subscription terms; show price, renewal, cancellation, trial length, and paid conversion clearly.

## Release Process

- Build a release artifact with the repo's official command.
- Validate signing and versionCode/versionName increments.
- Run smoke tests against production-like configuration.
- Use internal testing before production rollout.
- Prefer staged rollout for meaningful changes.
- Monitor crash-free users, ANRs, startup time, key funnel events, reviews, refund/cancel signals, and support messages.

## Store Growth

- Treat store listing as a funnel: impression, store page view, install, activation, retention.
- A/B test icon, feature graphic, first screenshot, short description, and pricing page when traffic is sufficient.
- Localize only after the core listing converts in the primary market.
