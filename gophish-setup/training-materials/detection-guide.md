# Phishing Detection Guide

## 🔍 How to Identify Phishing Attacks

This guide provides comprehensive techniques for detecting and avoiding phishing attacks based on the latest threat intelligence and attack patterns.

## 🚨 Immediate Red Flags

### Email Header Analysis

#### Sender Verification
```
Look for these suspicious patterns:
❌ Generic sender names: "Security Team" instead of specific names
❌ Spoofed domains: microsft.com instead of microsoft.com
❌ Suspicious TLDs: .tk, .ml, .ga domains
❌ Free email services: gmail.com for corporate communications
```

#### Subject Line Indicators
```
High-risk subject patterns:
⚠️ "URGENT: Action Required"
⚠️ "Your account will be suspended"
⚠️ "Verify your identity immediately"
⚠️ "Congratulations! You've won..."
⚠️ "Re:" for emails you never sent
```

### Content Analysis

#### Language and Grammar
- **Poor grammar and spelling**: Legitimate organizations have proofreaders
- **Unusual phrasing**: Awkward sentence construction
- **Generic greetings**: "Dear Customer" instead of your name
- **Urgent pressure tactics**: Artificial time constraints

#### Visual Indicators
- **Mismatched logos**: Slightly wrong colors or fonts
- **Low-resolution images**: Pixelated or blurry graphics
- **Inconsistent formatting**: Mixed fonts and styles
- **Missing standard elements**: Proper company footers

## 🔗 Link and URL Analysis

### URL Inspection Techniques

#### Before Clicking
1. **Hover over links** to preview destination
2. **Look for URL shorteners** (bit.ly, tinyurl.com)
3. **Check domain spelling** carefully
4. **Verify HTTPS usage** for sensitive sites

#### Suspicious URL Patterns
```
Examples of malicious URLs:
❌ microsft-security-update.com
❌ paypaI-verification.org (using capital i)
❌ amazon-support.tk
❌ secure-banking-update.ml
❌ bit.ly/3x8Kj9P (shortened URLs)
```

#### Safe URL Verification
```
Legitimate URL examples:
✅ login.microsoftonline.com
✅ www.paypal.com
✅ signin.aws.amazon.com
✅ accounts.google.com
```

### Advanced URL Analysis

#### Domain Investigation
1. **WHOIS lookup**: Check domain registration details
2. **Domain age**: Recently registered domains are suspicious
3. **SSL certificate**: Verify certificate authority and validity
4. **Subdomain analysis**: Look for suspicious subdomains

#### Tools for URL Analysis
- **VirusTotal**: Scan URLs for malicious content
- **URLVoid**: Check URL reputation
- **PhishTank**: Community-driven phishing database
- **Google Safe Browsing**: Check if URL is flagged

## 📧 Email Authentication Analysis

### SPF (Sender Policy Framework)
```
Check email headers for SPF results:
✅ SPF: PASS - Email sent from authorized server
❌ SPF: FAIL - Email not from authorized server
⚠️ SPF: SOFTFAIL - Suspicious but not definitive
```

### DKIM (DomainKeys Identified Mail)
```
DKIM signature verification:
✅ DKIM: PASS - Email content verified
❌ DKIM: FAIL - Email content modified
❓ DKIM: NONE - No DKIM signature present
```

### DMARC (Domain-based Message Authentication)
```
DMARC policy results:
✅ DMARC: PASS - Email passes authentication
❌ DMARC: FAIL - Email fails authentication
⚠️ DMARC: QUARANTINE - Email flagged as suspicious
```

## 📱 Mobile-Specific Threats

### SMS Phishing (Smishing)
#### Common Patterns
- Package delivery notifications
- Bank security alerts
- Two-factor authentication codes
- Prize/contest notifications

#### Detection Tips
- Verify sender phone numbers
- Check for spelling errors
- Don't click links in unexpected SMS
- Contact company directly to verify

### QR Code Phishing (Quishing)
#### Risk Scenarios
- Fake restaurant menus
- Parking meter payments
- Security update prompts
- Contact tracing forms

#### Safety Measures
- Preview QR destinations before scanning
- Only scan QR codes from trusted sources
- Use QR scanner apps with URL preview
- Verify context and location

## 🎭 Social Engineering Tactics

### Psychological Manipulation

#### Authority Impersonation
- **CEO fraud**: Fake urgent requests from executives
- **IT support**: Fake technical assistance calls
- **Government agencies**: IRS, FBI, police impersonation
- **Service providers**: Bank, utility, tech support

#### Emotional Triggers
- **Fear**: Account suspension, security breach
- **Urgency**: Limited time offers, immediate action
- **Greed**: Lottery winnings, investment opportunities
- **Curiosity**: Scandalous news, gossip

#### Social Proof
- **Fake testimonials**: Fabricated user reviews
- **Bandwagon effect**: "Everyone is doing this"
- **Scarcity**: Limited availability claims
- **Trust indicators**: Fake security badges

### Business Email Compromise (BEC)

#### Common BEC Scenarios
1. **Invoice fraud**: Fake supplier invoices
2. **Payroll redirection**: Employee account changes
3. **Wire transfer fraud**: Executive payment requests
4. **Gift card scams**: Employee purchase requests

#### Detection Strategies
- **Verify requests through alternate channels**
- **Question unusual payment requests**
- **Check email addresses carefully**
- **Implement approval workflows**

## 🔍 Technical Analysis Tools

### Email Header Analysis

#### Critical Headers to Check
```
Return-Path: Shows actual sending server
Received: Traces email routing path
Authentication-Results: Shows SPF/DKIM/DMARC results
X-Originating-IP: Original sender IP address
Message-ID: Unique message identifier
```

#### Header Analysis Tools
- **MxToolbox Header Analyzer**
- **Google Admin Toolbox**
- **Mail Header Analyzer**
- **MessageHeader Analyzer**

### Attachment Analysis

#### Safe Analysis Practices
1. **Don't open attachments** from unknown senders
2. **Scan with antivirus** before opening
3. **Use sandbox environments** for testing
4. **Check file extensions** carefully

#### Suspicious Attachment Types
```
High-risk file extensions:
❌ .exe, .scr, .bat - Executable files
❌ .zip, .rar - Compressed archives
❌ .doc, .xls with macros - Office documents
❌ .pdf with embedded content
❌ .js, .vbs - Script files
```

### Network Analysis

#### Traffic Monitoring
- Monitor DNS requests for suspicious domains
- Track HTTP/HTTPS connections
- Analyze network logs for anomalies
- Use threat intelligence feeds

#### Indicators of Compromise (IOCs)
- Unusual outbound connections
- DNS queries to suspicious domains
- Large data transfers
- Connections to known malicious IPs

## 🎯 Advanced Attack Detection

### AI-Enhanced Phishing

#### Deepfake Detection
- **Inconsistent facial features**: Unnatural expressions
- **Audio anomalies**: Unusual speech patterns
- **Context verification**: Verify claims independently
- **Technical analysis**: Use deepfake detection tools

#### AI-Generated Text
- **Unnatural language patterns**: Too perfect grammar
- **Lack of personal details**: Generic responses
- **Inconsistent information**: Contradictory statements
- **Template-like structure**: Repetitive patterns

### Supply Chain Attacks

#### Vendor Impersonation
- **Verify vendor communications** through known channels
- **Check for unusual requests** outside normal processes
- **Validate digital signatures** on software updates
- **Monitor vendor security status** regularly

#### Third-Party Risk Assessment
- **Regular security assessments** of vendors
- **Monitor vendor communications** for compromises
- **Implement vendor verification** procedures
- **Track vendor security incidents**

## 📊 Detection Metrics and KPIs

### Individual Metrics
- **Phishing email reporting rate**
- **Time to report suspicious emails**
- **False positive reporting rate**
- **Training completion scores**

### Organizational Metrics
- **Overall click-through rates**
- **Department vulnerability scores**
- **Incident response times**
- **Security awareness trends**

### Industry Benchmarks
- **Average phishing susceptibility**: 3-5%
- **Reporting rates**: 10-15% for trained users
- **Training effectiveness**: 60-80% improvement
- **Incident reduction**: 40-70% after training

## 🛡️ Detection Best Practices

### Daily Habits
1. **Always verify sender identity** for sensitive requests
2. **Hover over links** before clicking
3. **Check URLs carefully** for typos
4. **Report suspicious emails** immediately
5. **Keep software updated** regularly

### Email Security Settings
1. **Enable spam filtering** with high sensitivity
2. **Configure phishing protection** in email client
3. **Display full headers** for suspicious emails
4. **Enable security warnings** for external emails
5. **Use email encryption** for sensitive communications

### Organizational Policies
1. **Implement verification procedures** for financial requests
2. **Establish reporting channels** for suspicious emails
3. **Regular security training** and awareness programs
4. **Multi-factor authentication** for all accounts
5. **Network segmentation** to limit breach impact

## 🚨 Incident Response Procedures

### Immediate Actions
1. **Don't click links or download attachments**
2. **Forward suspicious email** to security team
3. **Mark email as phishing** in email client
4. **Change passwords** if credentials were entered
5. **Report to IT security** immediately

### If You've Been Compromised
1. **Disconnect from network** immediately
2. **Change all passwords** for affected accounts
3. **Notify security team** and management
4. **Scan system** for malware
5. **Monitor accounts** for unauthorized activity

### Documentation Requirements
1. **Screenshot suspicious emails** before deleting
2. **Record timestamps** of interactions
3. **Document actions taken** during incident
4. **Report impact assessment** to management
5. **Create lessons learned** documentation

## 🔬 Emerging Threat Patterns

### 2024 Attack Trends

#### Business-Themed Attacks
- **Microsoft Teams meeting invites**
- **Zoom security updates**
- **DocuSign document requests**
- **Slack workspace invitations**

#### Financial Services Targeting
- **Cryptocurrency wallet updates**
- **Investment opportunity alerts**
- **Bank security notifications**
- **Credit monitoring services**

#### Healthcare Sector Attacks
- **Patient portal updates**
- **Insurance claim notifications**
- **Medical appointment confirmations**
- **Health record access requests**

### Future Threat Predictions
- **Increased AI-generated content**
- **Voice synthesis attacks**
- **Augmented reality phishing**
- **IoT device targeting**

## 📚 Training and Awareness

### Continuous Learning
1. **Stay informed** about new threats
2. **Participate in training** programs regularly
3. **Practice detection skills** with simulations
4. **Share knowledge** with colleagues
5. **Update security procedures** based on new threats

### Resources for Improvement
- **Phishing simulation platforms**
- **Security awareness training programs**
- **Threat intelligence feeds**
- **Industry security forums**
- **Cybersecurity news sources**

---

## 🎯 Quick Reference Checklist

### Before Clicking Any Link:
- [ ] Is the sender address legitimate?
- [ ] Does the domain name look correct?
- [ ] Is there urgency or pressure in the message?
- [ ] Can I verify this request another way?
- [ ] Does the email ask for sensitive information?

### When in Doubt:
1. **Stop** - Don't click or respond
2. **Verify** - Contact sender through known channels
3. **Report** - Forward to security team
4. **Learn** - Understand what made it suspicious

**Remember**: It's better to be cautious and verify than to fall victim to a phishing attack. When in doubt, always err on the side of security.

---

**Last Updated**: December 2024  
**Version**: 1.0  
**Next Review**: March 2025