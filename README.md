# GoPhish Security Awareness Platform

## 🎯 Complete Phishing Campaign Simulator & Training Program

This comprehensive security awareness platform provides everything needed to implement a professional phishing simulation program using GoPhish, complete with realistic attack templates based on 2024 threat intelligence and extensive training materials.

## 🚀 Quick Start

```bash
# Clone this repository
git clone <repository-url>
cd gophish-setup

# Run the automated installation
chmod +x install.sh
./install.sh

# Start GoPhish
cd gophish
./start.sh
```

**Access Points:**
- Admin Interface: https://localhost:3333
- Phishing Server: http://localhost:80

## 📁 Project Structure

```
gophish-setup/
├── install.sh                    # Automated installation script
├── templates/
│   └── email-templates.json      # 5 realistic phishing email templates
├── landing-pages/
│   └── landing-pages.json        # Credential harvesting pages
├── config/
│   └── smtp-configs.json         # Email server configurations
├── campaigns/
│   └── campaign-guide.md          # Step-by-step execution guide
└── training-materials/
    ├── README.md                  # Comprehensive training program
    └── detection-guide.md         # Phishing detection techniques
```

## 🎣 Phishing Templates (Based on 2024 Attack Trends)

### 1. Microsoft 365 Security Alert
- **Attack Type**: Credential Harvesting
- **Sophistication**: High
- **Target**: All employees
- **Scenario**: Suspicious login from foreign IP

### 2. Banking Security Update (QR Code)
- **Attack Type**: QR Code Phishing (Quishing)
- **Sophistication**: High
- **Target**: All employees
- **Scenario**: Mobile banking security update

### 3. IT Support Follow-up (Vishing)
- **Attack Type**: Voice Phishing Follow-up
- **Sophistication**: Medium
- **Target**: All employees
- **Scenario**: System maintenance verification

### 4. DocuSign Urgent Document
- **Attack Type**: Business Email Compromise
- **Sophistication**: High
- **Target**: Executives and HR
- **Scenario**: Time-sensitive document signing

### 5. Google Workspace Security Alert
- **Attack Type**: Cloud Service Impersonation
- **Sophistication**: High
- **Target**: All employees
- **Scenario**: Suspicious account activity

## 🎯 Key Features

### Realistic Attack Simulations
- ✅ **Based on real 2024 attacks**: QR code phishing, vishing follow-ups, BEC
- ✅ **Professional design**: Authentic-looking emails and landing pages
- ✅ **Current threat intelligence**: AI-enhanced attacks, deepfakes, supply chain
- ✅ **Multi-vector campaigns**: Email, SMS, voice, QR codes

### Comprehensive Training Program
- ✅ **5 detailed training modules**: 170 minutes total content
- ✅ **Detection techniques**: Advanced threat recognition
- ✅ **Best practices**: Security habits and procedures
- ✅ **Incident response**: Step-by-step response procedures

### Professional Implementation
- ✅ **Easy installation**: Automated setup script
- ✅ **Multiple SMTP options**: Gmail, Office 365, SendGrid, AWS SES
- ✅ **Campaign management**: Pre-built scenarios and timelines
- ✅ **Detailed reporting**: Metrics, analysis, and improvement tracking

## 📊 2024 Phishing Trends Covered

### Emerging Attack Patterns
- **QR Code Phishing (Quishing)**: 300% increase in attacks
- **AI-Generated Content**: Sophisticated deepfake impersonations
- **Multi-Factor Authentication Bypass**: Real-time credential harvesting
- **Supply Chain Phishing**: Attacks through trusted vendor relationships
- **Cloud Service Impersonation**: Fake Microsoft 365, Google Workspace alerts

### Attack Sophistication Levels
- **Basic**: Obvious phishing indicators for initial training
- **Intermediate**: Moderately sophisticated social engineering
- **Advanced**: Highly realistic attacks mimicking real threats
- **Expert**: AI-enhanced and multi-vector attack campaigns

## 🛡️ Training Modules

### Module 1: Phishing Fundamentals (30 min)
- Define phishing and common attack types
- Identify key indicators of phishing attempts
- Understand the impact of successful attacks

### Module 2: 2024 Threat Landscape (45 min)
- Recognize emerging attack patterns
- Understand AI-enhanced phishing techniques
- Identify modern social engineering tactics

### Module 3: Email Security Best Practices (30 min)
- Implement safe email handling procedures
- Verify sender authenticity
- Use built-in security features effectively

### Module 4: Incident Response Procedures (20 min)
- Know how to report suspicious emails
- Understand proper incident escalation
- Learn recovery procedures after compromise

### Module 5: Advanced Threat Recognition (45 min)
- Identify sophisticated attack techniques
- Recognize business email compromise scenarios
- Understand supply chain attack vectors

## 📈 Expected Results

### Industry Benchmarks
- **Baseline Click Rate**: 15-30% (untrained users)
- **Improved Click Rate**: 3-5% (after training)
- **Reporting Rate**: 10-15% (trained users)
- **Training Effectiveness**: 60-80% improvement

### Key Metrics to Track
- Email open rates and click-through rates
- Credential submission rates
- Time to report suspicious emails
- Department vulnerability assessments
- Long-term security culture improvement

## ⚖️ Legal and Ethical Compliance

### Authorization Requirements
- ✅ Written management approval
- ✅ Legal review of campaign content
- ✅ HR notification and coordination
- ✅ Clear scope definition and boundaries

### Ethical Guidelines
- ✅ Educational focus over punishment
- ✅ Supportive learning environment
- ✅ Privacy protection and data minimization
- ✅ Transparent communication about program goals

### Compliance Considerations
- ✅ GDPR data handling requirements
- ✅ Industry-specific regulations
- ✅ Employee rights and privacy
- ✅ Data retention and deletion policies

## 🔧 Technical Requirements

### System Requirements
- Linux/Windows/macOS operating system
- Administrative access for port binding (80/443)
- SMTP server access for email delivery
- SSL certificates (automatically generated)

### Network Configuration
- Outbound SMTP connectivity (port 587/465)
- Inbound HTTP/HTTPS access (ports 80/443)
- DNS resolution for target domains
- Firewall rules for GoPhish traffic

### SMTP Options Supported
- **Gmail**: App-specific passwords with 2FA
- **Office 365**: Enterprise email accounts
- **SendGrid**: Professional email delivery
- **Amazon SES**: Scalable cloud email service
- **Local SMTP**: Internal email servers

## 📚 Documentation Included

### Installation and Setup
- Automated installation script with dependency management
- Step-by-step manual configuration guide
- SMTP server configuration examples
- SSL certificate setup instructions

### Campaign Management
- Pre-campaign planning checklists
- Template customization guides
- User group management procedures
- Real-time monitoring dashboards

### Training and Awareness
- Comprehensive detection guide with examples
- Interactive training materials and assessments
- Best practices for security teams
- Incident response procedures and workflows

## 🚨 Important Security Notes

### For Security Teams
1. **Only use for authorized testing** with proper approvals
2. **Protect GoPhish infrastructure** with appropriate security controls
3. **Handle collected data responsibly** per privacy regulations
4. **Regular updates** to maintain security and effectiveness

### For Organizations
1. **Obtain written authorization** before any testing
2. **Coordinate with legal and HR** departments
3. **Communicate program goals** clearly to employees
4. **Focus on education** rather than punishment

## 📞 Support and Resources

### Getting Help
- Comprehensive documentation in `/training-materials/`
- Step-by-step guides in `/campaigns/`
- Configuration examples in `/config/`
- Template libraries in `/templates/` and `/landing-pages/`

### Additional Resources
- [GoPhish Official Documentation](https://docs.getgophish.com/)
- [NIST Cybersecurity Framework](https://www.nist.gov/cyberframework)
- [SANS Security Awareness Training](https://www.sans.org/security-awareness-training/)
- [PhishingBox Resources](https://phishingbox.com/resources)

## 🔄 Continuous Improvement

### Regular Updates
- Monthly threat intelligence integration
- Quarterly template refreshes
- Annual program effectiveness reviews
- Ongoing training material enhancements

### Community Contribution
- Share anonymized results with security community
- Contribute new templates based on emerging threats
- Participate in threat intelligence sharing
- Collaborate on best practices development

---

## 🎓 Educational Purpose Statement

This platform is designed exclusively for **authorized security testing and employee education**. All materials should be used responsibly with proper approvals and in compliance with applicable laws and regulations.

**Remember**: The goal is to improve security awareness and create a culture of cybersecurity vigilance, not to embarrass or punish employees.

---

**Project Status**: Complete and Ready for Deployment  
**Last Updated**: December 2024  
**Compatibility**: GoPhish v0.12.x and later  
**License**: Educational Use Only