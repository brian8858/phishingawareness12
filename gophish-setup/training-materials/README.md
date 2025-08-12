# GoPhish Security Awareness Training Program

## 🎯 Program Overview

This comprehensive security awareness program is designed to educate employees about phishing attacks and improve their ability to identify and respond to cyber threats. The program combines simulated phishing campaigns using GoPhish with targeted training materials based on real-world attack patterns from 2024.

## 📚 Table of Contents

1. [Installation Guide](#installation-guide)
2. [Understanding Phishing Attacks](#understanding-phishing-attacks)
3. [2024 Phishing Trends](#2024-phishing-trends)
4. [Template Scenarios](#template-scenarios)
5. [Campaign Setup Guide](#campaign-setup-guide)
6. [Training Modules](#training-modules)
7. [Best Practices](#best-practices)
8. [Legal and Ethical Considerations](#legal-and-ethical-considerations)

## 🚀 Installation Guide

### Prerequisites
- Linux/Windows/macOS system
- Administrative access (for port 80/443)
- SMTP server for email sending
- SSL certificates (automatically generated)

### Quick Start
```bash
# Clone this repository
git clone <repository-url>
cd gophish-setup

# Run the installation script
chmod +x install.sh
./install.sh

# Start GoPhish
cd gophish
./start.sh
```

### Access Points
- **Admin Interface**: https://localhost:3333
- **Phishing Server**: http://localhost:80
- **Default Login**: admin / (password shown on first run)

## 🎣 Understanding Phishing Attacks

### What is Phishing?
Phishing is a cybercrime where attackers impersonate legitimate entities to steal sensitive information such as:
- Login credentials
- Financial information
- Personal data
- Corporate secrets

### Common Attack Vectors

#### 1. Email Phishing
- Fraudulent emails appearing to be from trusted sources
- Urgency tactics to pressure quick action
- Malicious links and attachments

#### 2. Spear Phishing
- Targeted attacks against specific individuals
- Personalized content using social engineering
- Higher success rates due to customization

#### 3. Whaling
- Attacks targeting high-profile executives
- Business email compromise (BEC)
- Large financial fraud potential

#### 4. Vishing (Voice Phishing)
- Phone calls impersonating trusted entities
- Social engineering over voice communication
- Often followed by email confirmation

#### 5. Smishing (SMS Phishing)
- Text message-based attacks
- Mobile-specific vulnerabilities
- QR code exploitation

## 📈 2024 Phishing Trends

### Emerging Attack Patterns

#### QR Code Phishing (Quishing)
- **Trend**: 300% increase in QR-based attacks
- **Method**: Malicious QR codes leading to credential harvesting
- **Target**: Mobile users trusting QR technology
- **Defense**: Always verify QR source before scanning

#### AI-Generated Content
- **Trend**: Sophisticated deepfake audio/video
- **Method**: AI creates convincing impersonations
- **Target**: High-value executives and decision makers
- **Defense**: Implement verification protocols for sensitive requests

#### Multi-Factor Authentication Bypass
- **Trend**: Real-time credential harvesting
- **Method**: Immediate use of stolen credentials and MFA tokens
- **Target**: Organizations relying solely on MFA
- **Defense**: Implement behavioral analysis and additional verification

#### Supply Chain Phishing
- **Trend**: Attacks through trusted vendor relationships
- **Method**: Compromise partner organizations to attack targets
- **Target**: Large enterprises with complex vendor networks
- **Defense**: Vendor security assessments and monitoring

#### Cloud Service Impersonation
- **Trend**: Fake Microsoft 365, Google Workspace alerts
- **Method**: Realistic service notifications about security issues
- **Target**: Remote workers dependent on cloud services
- **Defense**: Direct verification through official channels

## 🎭 Template Scenarios

### 1. Microsoft 365 Security Alert
- **Attack Type**: Credential Harvesting
- **Sophistication**: High - Uses Microsoft branding and terminology
- **Red Flags**:
  - Unusual sign-in from foreign location
  - Urgent action required
  - Generic security warnings
- **Training Focus**: URL verification, official Microsoft communication patterns

### 2. Banking Security Update (QR Code)
- **Attack Type**: QR Code Phishing (Quishing)
- **Sophistication**: High - Professional banking design
- **Red Flags**:
  - QR code for "security update"
  - Time pressure (December 31 deadline)
  - Requests for banking credentials
- **Training Focus**: QR code safety, bank communication verification

### 3. IT Support Follow-up (Vishing)
- **Attack Type**: Voice Phishing Follow-up
- **Sophistication**: Medium - Relies on previous phone contact
- **Red Flags**:
  - References "phone conversation" that didn't happen
  - Requests network credentials
  - Urgent system maintenance claims
- **Training Focus**: IT request verification protocols

### 4. DocuSign Document Urgency
- **Attack Type**: Business Email Compromise
- **Sophistication**: High - Professional DocuSign interface
- **Red Flags**:
  - Same-day expiration pressure
  - Requests sensitive personal information
  - Generic "legal department" sender
- **Training Focus**: Document verification, legal process awareness

### 5. Google Workspace Security
- **Attack Type**: Cloud Service Impersonation  
- **Sophistication**: High - Google design and terminology
- **Red Flags**:
  - Suspicious activity alerts
  - Foreign IP addresses
  - Credential verification requests
- **Training Focus**: Google security feature awareness

## 🏗️ Campaign Setup Guide

### 1. SMTP Configuration
```json
{
  "name": "Email Server",
  "host": "smtp.gmail.com:587",
  "username": "your-email@company.com",
  "password": "app-specific-password",
  "from_address": "security@company.com"
}
```

### 2. Target Groups
- **New Employees**: Basic awareness training
- **Finance Team**: BEC and wire fraud focus
- **Executives**: Whaling and advanced persistent threats
- **IT Department**: Technical attack vectors
- **All Staff**: General phishing awareness

### 3. Campaign Timeline
- **Week 1**: Baseline assessment campaign
- **Week 2-3**: Training delivery based on results
- **Week 4**: Follow-up campaign to measure improvement
- **Monthly**: Ongoing simulations with new scenarios

### 4. Metrics to Track
- **Email Open Rate**: Engagement with phishing emails
- **Click Rate**: Users who clicked malicious links
- **Data Submission Rate**: Users who entered credentials
- **Reporting Rate**: Users who reported suspicious emails
- **Time to Report**: How quickly threats are identified

## 📖 Training Modules

### Module 1: Phishing Fundamentals (30 minutes)
**Learning Objectives:**
- Define phishing and common attack types
- Identify key indicators of phishing attempts
- Understand the impact of successful attacks

**Content:**
- Interactive examples of real phishing emails
- Video demonstrations of attack progression
- Quiz: Identifying phishing vs. legitimate emails

### Module 2: 2024 Threat Landscape (45 minutes)
**Learning Objectives:**
- Recognize emerging attack patterns
- Understand AI-enhanced phishing techniques
- Identify modern social engineering tactics

**Content:**
- Case studies of recent high-profile attacks
- Demonstration of QR code and vishing attacks
- Interactive threat identification exercises

### Module 3: Email Security Best Practices (30 minutes)
**Learning Objectives:**
- Implement safe email handling procedures
- Verify sender authenticity
- Use built-in security features effectively

**Content:**
- Email header analysis techniques
- URL inspection and verification
- Proper use of email security tools

### Module 4: Incident Response Procedures (20 minutes)
**Learning Objectives:**
- Know how to report suspicious emails
- Understand proper incident escalation
- Learn recovery procedures after compromise

**Content:**
- Step-by-step reporting procedures
- Contact information for security team
- Post-incident security measures

### Module 5: Advanced Threat Recognition (45 minutes)
**Learning Objectives:**
- Identify sophisticated attack techniques
- Recognize business email compromise scenarios
- Understand supply chain attack vectors

**Content:**
- Analysis of advanced persistent threats
- BEC scenario simulations
- Vendor communication verification

## 🛡️ Best Practices

### For Security Teams

#### Campaign Planning
1. **Start Simple**: Begin with obvious phishing indicators
2. **Gradual Complexity**: Increase sophistication over time
3. **Seasonal Relevance**: Use current events and holidays
4. **Department Targeting**: Tailor scenarios to specific roles

#### Result Analysis
1. **Individual Tracking**: Monitor personal improvement
2. **Department Metrics**: Identify vulnerable groups
3. **Trend Analysis**: Track improvement over time
4. **Immediate Feedback**: Provide instant education upon failure

#### Follow-up Training
1. **Targeted Education**: Focus on users who clicked/submitted
2. **Positive Reinforcement**: Recognize good reporting behavior
3. **Regular Updates**: Share new threat intelligence
4. **Executive Reporting**: Provide leadership visibility

### For Employees

#### Email Verification Checklist
- [ ] Is the sender address exactly correct?
- [ ] Does the email contain spelling/grammar errors?
- [ ] Is there unusual urgency or pressure?
- [ ] Are you being asked for sensitive information?
- [ ] Does the request match normal business processes?
- [ ] Can you verify the request through another channel?

#### When in Doubt
1. **Don't Click**: Hover over links to preview destinations
2. **Don't Download**: Scan attachments before opening
3. **Verify Independently**: Contact sender through known channels
4. **Report Suspicious**: Forward to security team immediately

#### Red Flags to Watch For
- Urgent action required
- Threats of account closure/suspension
- Requests for sensitive information via email
- Unexpected attachments or links
- Generic greetings ("Dear Customer")
- Mismatched URLs and domains
- Poor grammar and spelling
- Unusual sender behavior

## ⚖️ Legal and Ethical Considerations

### Authorization Requirements
1. **Written Permission**: Obtain explicit authorization before testing
2. **Scope Definition**: Clearly define testing boundaries
3. **Data Protection**: Ensure captured data is handled securely
4. **Disclosure Timeline**: Plan when to reveal simulation results

### Ethical Guidelines
1. **Educational Purpose**: Focus on awareness, not embarrassment
2. **Reasonable Scenarios**: Use believable but not malicious content
3. **Supportive Environment**: Provide help, not punishment
4. **Privacy Respect**: Limit data collection to necessary metrics

### Compliance Considerations
- **GDPR**: Ensure proper consent and data handling
- **Industry Regulations**: Follow sector-specific requirements
- **Employee Rights**: Respect workplace privacy expectations
- **Data Retention**: Implement appropriate retention policies

### Documentation Requirements
1. **Campaign Objectives**: Document training goals
2. **Methodology**: Record testing procedures
3. **Results Analysis**: Maintain detailed metrics
4. **Lessons Learned**: Capture improvement opportunities

## 📊 Measuring Success

### Key Performance Indicators (KPIs)

#### Immediate Metrics
- **Phishing Susceptibility Rate**: Percentage who interact with phishing emails
- **Reporting Rate**: Percentage who report suspicious emails
- **Time to Report**: Average time to identify and report threats
- **Repeat Offender Rate**: Users who fail multiple simulations

#### Long-term Metrics
- **Security Culture Index**: Overall organizational security awareness
- **Incident Reduction**: Decrease in real phishing incidents
- **Training Completion**: Participation in security training programs
- **Knowledge Retention**: Performance on security assessments

### Benchmarking
- **Industry Standards**: Compare against sector averages
- **Internal Trends**: Track improvement over time
- **Best Practices**: Adopt proven methodologies
- **Continuous Improvement**: Regular program enhancement

## 🔄 Continuous Improvement

### Regular Updates
1. **Threat Intelligence**: Incorporate new attack patterns
2. **Template Refresh**: Update scenarios based on current threats
3. **Technology Evolution**: Adapt to new communication platforms
4. **Feedback Integration**: Improve based on user and stakeholder input

### Advanced Techniques
1. **Multi-Vector Campaigns**: Combine email, SMS, and voice
2. **Social Engineering**: Use public information for targeting
3. **Seasonal Campaigns**: Leverage holidays and events
4. **Industry-Specific**: Tailor to sector-specific threats

### Program Maturation
- **Year 1**: Basic awareness and simple simulations
- **Year 2**: Advanced scenarios and behavioral analysis
- **Year 3**: Sophisticated campaigns and threat hunting integration
- **Ongoing**: Continuous adaptation to emerging threats

---

## 📞 Support and Resources

### Technical Support
- **Email**: security-training@company.com
- **Phone**: (555) 123-SECURITY
- **Documentation**: [Internal Security Portal]
- **Training Portal**: [LMS Link]

### Additional Resources
- [NIST Cybersecurity Framework](https://www.nist.gov/cyberframework)
- [SANS Security Awareness](https://www.sans.org/security-awareness-training/)
- [KnowBe4 Resources](https://www.knowbe4.com/resources)
- [Phishing.org](https://www.phishing.org/)

### Emergency Contacts
- **Security Operations Center**: (555) 123-SOC1
- **Incident Response**: incident-response@company.com
- **24/7 Hotline**: (555) 123-HELP

---

**Remember**: The goal of this program is education and improvement, not punishment. Every simulation is an opportunity to learn and strengthen our collective security posture.

**Last Updated**: December 2024  
**Version**: 1.0  
**Next Review**: March 2025