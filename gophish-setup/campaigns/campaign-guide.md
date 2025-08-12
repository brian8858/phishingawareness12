# GoPhish Campaign Execution Guide

## 🎯 Campaign Planning and Execution

This guide provides step-by-step instructions for planning, executing, and analyzing phishing simulation campaigns using GoPhish.

## 📋 Pre-Campaign Checklist

### Legal and Administrative
- [ ] Written authorization from management
- [ ] Legal review of campaign content
- [ ] HR notification and approval
- [ ] IT department coordination
- [ ] Employee notification plan (post-campaign)

### Technical Setup
- [ ] GoPhish installation and configuration
- [ ] SMTP server configuration and testing
- [ ] SSL certificates installed
- [ ] Network access verified
- [ ] Backup and recovery procedures

### Content Preparation
- [ ] Email templates selected and customized
- [ ] Landing pages configured and tested
- [ ] User groups defined and imported
- [ ] Campaign timeline established
- [ ] Success metrics defined

## 🏗️ Step-by-Step Campaign Setup

### Step 1: Configure Sending Profiles

1. **Access GoPhish Admin Panel**
   ```
   URL: https://localhost:3333
   ```

2. **Navigate to Sending Profiles**
   - Click "Sending Profiles" in the left sidebar
   - Click "New Profile"

3. **Configure SMTP Settings**
   ```
   Name: Company Email Server
   From: security-team@company.com
   Host: smtp.gmail.com:587
   Username: your-smtp-username
   Password: your-app-password
   ```

4. **Test Configuration**
   - Click "Send Test Email"
   - Verify email delivery
   - Save profile

### Step 2: Import Email Templates

1. **Access Email Templates**
   - Click "Email Templates" in sidebar
   - Click "New Template"

2. **Import Template Content**
   - Use provided templates from `/templates/email-templates.json`
   - Customize for your organization:
     - Replace company names
     - Update contact information
     - Adjust branding elements

3. **Template Variables**
   ```
   {{.FirstName}} - Recipient's first name
   {{.LastName}} - Recipient's last name
   {{.Email}} - Recipient's email address
   {{.URL}} - Tracking link to landing page
   {{.Tracker}} - Tracking image
   ```

### Step 3: Configure Landing Pages

1. **Access Landing Pages**
   - Click "Landing Pages" in sidebar
   - Click "New Page"

2. **Import Landing Page**
   - Use templates from `/landing-pages/landing-pages.json`
   - Enable "Capture Submitted Data"
   - Enable "Capture Passwords" (if applicable)

3. **Customize Landing Page**
   - Update branding and logos
   - Adjust form fields as needed
   - Set redirect URL for post-submission

### Step 4: Create User Groups

1. **Prepare User Data**
   Create CSV file with columns:
   ```csv
   First Name,Last Name,Email,Position
   John,Doe,john.doe@company.com,Manager
   Jane,Smith,jane.smith@company.com,Analyst
   ```

2. **Import Users**
   - Click "Users & Groups"
   - Click "New Group"
   - Upload CSV file or add manually
   - Organize by department/role

### Step 5: Launch Campaign

1. **Create New Campaign**
   - Click "Campaigns"
   - Click "New Campaign"

2. **Campaign Configuration**
   ```
   Name: Q4 2024 Security Awareness - Microsoft Phishing
   Email Template: Microsoft 365 Security Alert 2024
   Landing Page: Microsoft 365 Login Clone
   URL: http://your-gophish-server.com
   Launch Date: [Select date/time]
   Send Emails By: [End date]
   Sending Profile: Company Email Server
   Groups: [Select target groups]
   ```

3. **Launch Campaign**
   - Review all settings
   - Click "Launch Campaign"
   - Monitor real-time dashboard

## 📊 Campaign Monitoring

### Real-Time Metrics Dashboard

**Key Metrics to Monitor:**
- **Emails Sent**: Total emails delivered
- **Opened**: Recipients who opened the email
- **Clicked**: Recipients who clicked the link
- **Submitted Data**: Recipients who entered credentials
- **Reported**: Recipients who reported the email

### Timeline View
- Track individual user interactions
- Monitor campaign progression
- Identify patterns in user behavior

### Export Data
- Generate detailed reports
- Export for further analysis
- Maintain records for compliance

## 🎯 Campaign Scenarios

### Scenario 1: Baseline Assessment
**Objective**: Establish current security awareness level
**Template**: Microsoft 365 Security Alert
**Target**: All employees
**Duration**: 1 week
**Follow-up**: Immediate training for those who clicked

### Scenario 2: Department-Specific Training
**Objective**: Target high-risk departments
**Template**: Banking/Finance themed
**Target**: Finance and Accounting teams
**Duration**: 3 days
**Follow-up**: Specialized BEC training

### Scenario 3: Executive Focus
**Objective**: Test leadership awareness
**Template**: DocuSign document signing
**Target**: C-level and VPs
**Duration**: 2 days
**Follow-up**: Executive briefing on results

### Scenario 4: Technical Challenge
**Objective**: Test IT department awareness
**Template**: IT Support verification
**Target**: IT and Security teams
**Duration**: 1 day
**Follow-up**: Technical security briefing

### Scenario 5: Mobile-Focused Campaign
**Objective**: Test mobile device awareness
**Template**: QR code banking update
**Target**: All employees
**Duration**: 1 week
**Follow-up**: Mobile security training

## 📈 Advanced Campaign Techniques

### Multi-Phase Campaigns

**Phase 1: Reconnaissance**
- Send benign "security update" emails
- Identify engaged users
- Gather interaction patterns

**Phase 2: Initial Test**
- Send low-sophistication phishing attempt
- Target users who engaged in Phase 1
- Measure baseline susceptibility

**Phase 3: Advanced Test**
- Send sophisticated, targeted emails
- Use information from previous phases
- Test improvement after training

### Seasonal Campaigns

**Holiday-Themed**
- Christmas bonus notifications
- Holiday party invitations
- Year-end benefit updates

**Tax Season**
- W-2 form availability
- Tax preparation services
- IRS communication spoofs

**Back-to-School**
- Education benefit updates
- Training registration
- IT equipment distribution

### Role-Based Targeting

**Finance Team**
- Invoice processing
- Wire transfer requests
- Banking communications

**HR Department**
- Employee verification requests
- Benefits administration
- Compliance notifications

**Sales Team**
- Lead generation emails
- Customer communication
- Commission statements

## 📊 Analysis and Reporting

### Immediate Post-Campaign Analysis

**Within 24 Hours:**
1. Review overall metrics
2. Identify users who interacted
3. Send immediate educational content
4. Schedule follow-up training

**Key Questions to Answer:**
- Which departments performed poorly?
- What time of day had highest click rates?
- Which email elements were most effective?
- Did previous training show impact?

### Detailed Analysis

**User-Level Analysis:**
- Individual interaction timelines
- Pattern recognition across campaigns
- Improvement tracking over time
- Risk scoring based on behavior

**Organizational Analysis:**
- Department vulnerability assessment
- Geographic pattern analysis
- Time-based interaction patterns
- Correlation with other security metrics

### Reporting Templates

**Executive Summary**
```
Campaign: [Name]
Date: [Range]
Participants: [Number]
Overall Results:
- Email Open Rate: [%]
- Click Rate: [%]
- Data Submission Rate: [%]
- Reporting Rate: [%]

Key Findings:
- [Finding 1]
- [Finding 2]
- [Finding 3]

Recommendations:
- [Recommendation 1]
- [Recommendation 2]
- [Recommendation 3]
```

**Detailed Department Report**
```
Department: [Name]
Participants: [Number]
Results:
- Opened: [X] / [Total] ([%])
- Clicked: [X] / [Total] ([%])
- Submitted: [X] / [Total] ([%])
- Reported: [X] / [Total] ([%])

Individual Results:
[User breakdown with anonymized IDs]

Training Recommendations:
[Specific recommendations for this department]
```

## 🔄 Follow-Up Actions

### Immediate Response (Within Hours)

**For Users Who Clicked:**
1. Send immediate educational email
2. Require completion of micro-learning module
3. Schedule one-on-one discussion if repeat offender

**For Users Who Reported:**
1. Send positive reinforcement email
2. Recognize in team meetings
3. Consider for security champion program

### Short-Term Follow-Up (Within Weeks)

**Training Delivery:**
- Mandatory training for vulnerable users
- Department-specific sessions
- Hands-on practice with email analysis

**Process Improvements:**
- Update security policies
- Enhance email filtering rules
- Implement additional security controls

### Long-Term Strategy (Within Months)

**Program Evolution:**
- Increase campaign sophistication
- Introduce new attack vectors
- Expand to other communication channels

**Culture Development:**
- Launch security champion program
- Regular security awareness communications
- Integration with performance reviews

## 🛡️ Best Practices

### Campaign Design
1. **Realistic but Safe**: Use believable scenarios without real harm
2. **Progressive Difficulty**: Start simple, increase complexity over time
3. **Relevant Content**: Use current events and organizational context
4. **Clear Objectives**: Define specific learning outcomes

### Ethical Considerations
1. **Educational Focus**: Emphasize learning over punishment
2. **Supportive Environment**: Provide help and resources
3. **Privacy Protection**: Limit data collection to necessary metrics
4. **Transparent Communication**: Explain program purpose and goals

### Technical Best Practices
1. **Secure Infrastructure**: Protect GoPhish server and data
2. **Regular Updates**: Keep software current with security patches
3. **Backup Procedures**: Maintain regular backups of campaign data
4. **Access Control**: Limit admin access to authorized personnel

## 🚨 Troubleshooting Common Issues

### Email Delivery Problems
**Issue**: Emails not being delivered
**Solutions**:
- Check SMTP configuration
- Verify DNS settings
- Review spam filter rules
- Test with different email providers

### Low Engagement Rates
**Issue**: Users not opening emails
**Solutions**:
- Improve subject lines
- Check sender reputation
- Verify email formatting
- Review send timing

### Technical Errors
**Issue**: Landing page not loading
**Solutions**:
- Check server connectivity
- Verify SSL certificates
- Review firewall rules
- Test with different browsers

### Legal Concerns
**Issue**: Employee complaints about testing
**Solutions**:
- Review authorization documentation
- Provide clear communication about program
- Offer opt-out procedures where appropriate
- Consult with legal team

## 📞 Support Resources

### Technical Documentation
- GoPhish Official Documentation
- SMTP Configuration Guides
- SSL Certificate Management
- Database Administration

### Training Resources
- Security Awareness Best Practices
- Adult Learning Principles
- Behavioral Change Techniques
- Communication Strategies

### Compliance and Legal
- Privacy Impact Assessments
- Employee Rights Guidelines
- Industry Regulations
- International Considerations

---

**Remember**: The success of your phishing simulation program depends on consistent execution, thorough analysis, and continuous improvement. Focus on creating a positive learning environment that encourages security awareness rather than fear.

**Last Updated**: December 2024  
**Version**: 1.0  
**Next Review**: March 2025