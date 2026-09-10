# Auto-Browser

Auto-Browser is an AI-powered web automation tool that makes complex web interactions simple through natural language commands. It combines the power of LLMs with browser automation to enable sophisticated multi-step workflows and data extraction.

Created by rUv (cause he could)


## Features

- 🤖 **Natural Language Control**: Describe what you want to do in plain English
- 🎯 **Smart Element Detection**: Automatically finds the right elements to interact with
- 📊 **Structured Data Extraction**: Extracts data in clean, organized formats
- 🔄 **Interactive Mode**: Supports form filling, clicking, and complex interactions
- 📝 **Report Generation**: Creates well-formatted markdown reports
- 🎨 **Template System**: Save and reuse site-specific configurations
- 🚀 **Easy to Use**: Simple CLI interface with verbose output option

## Introduction to Multi-Step Browser Automation

Auto-Browser revolutionizes web automation by allowing you to describe complex workflows in plain English. Instead of writing detailed scripts or learning complex APIs, you can simply describe what you want to accomplish:

```bash
# Multi-step workflow example
auto-browser easy --interactive "https://workday.com" "Login with username $USER_EMAIL, go to time sheet, enter 8 hours for today under project 'Development', add comment 'Sprint tasks', and submit for approval"
```

### Key Concepts

1. **Natural Language Control**
   - Describe actions in plain English
   - AI understands context and intent
   - Handles complex multi-step flows

2. **Smart Navigation**
   - Automatic element detection
   - Context-aware interactions
   - Dynamic content handling

3. **State Management**
   - Maintains session context
   - Handles authentication flows
   - Manages multi-page interactions

4. **Template System**
   - Reusable site configurations
   - Custom selectors and actions
   - Workflow templates

## Installation

## Installation

### Docker Installation (Recommended)

#### Using Docker Compose (Easiest)
```bash
# Clone repository
git clone https://github.com/ruvnet/auto-browser.git
cd auto-browser

# Set up environment
cp .env.example .env
# Edit .env and add your OPENAI_API_KEY

# Run with default example
docker-compose up

# Run custom command
docker-compose run --rm auto-browser \
  auto-browser easy "https://example.com" "Extract data"

# Run interactive mode
docker-compose run --rm auto-browser \
  auto-browser easy --interactive "https://example.com" "Fill out form"

# Run with custom model
LLM_MODEL=gpt-4 docker-compose up

# Run specific demo
docker-compose run --rm auto-browser \
  ./demos/07_timesheet_automation.sh
```

#### Using Docker Directly
```bash
# Build Docker image
docker build -t auto-browser .

# Run basic example
docker run -e OPENAI_API_KEY=your_key auto-browser \
  auto-browser easy "https://www.google.com/finance" "Get AAPL stock price"

# Run with output volume
docker run -v $(pwd)/output:/app/output -e OPENAI_API_KEY=your_key auto-browser \
  auto-browser easy -v "https://www.google.com/finance" "Get AAPL stock price"

# Run interactive mode
docker run -e OPENAI_API_KEY=your_key auto-browser \
  auto-browser easy --interactive "https://example.com" "Fill out contact form"
```

### Quick Install (Linux/macOS)

```bash
# Download and run install script
curl -sSL https://raw.githubusercontent.com/ruvnet/auto-browser/main/install.sh | bash
```

### Manual Installation

1. **System Requirements**
```bash
# Install Node.js (if not present)
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Playwright system dependencies
npx playwright install-deps
```

2. **Clone and Setup**
```bash
# Clone repository
git clone https://github.com/ruvnet/auto-browser.git
cd auto-browser

# Install Python package
pip install -e .

# Install Playwright browsers
playwright install

# Set up environment
cp .env.example .env
# Edit .env and add your OPENAI_API_KEY
```

## Docker Usage Examples

### Basic Operations
```bash
# Run with specific URL
docker-compose run --rm auto-browser \
  auto-browser easy "https://example.com" "Extract main content"

# Run with verbose output
docker-compose run --rm auto-browser \
  auto-browser easy -v "https://example.com" "Extract data"

# Run with report generation
docker-compose run --rm auto-browser \
  auto-browser easy -v -r "https://example.com" "Generate report"
```

### Advanced Workflows
```bash
# Run timesheet automation
docker-compose run --rm auto-browser \
  auto-browser easy --interactive "https://workday.com" \
  "Fill timesheet for this week"

# Run social media campaign
docker-compose run --rm auto-browser \
  auto-browser easy --interactive "https://buffer.com" \
  "Create and schedule posts"

# Run research workflow
docker-compose run --rm auto-browser \
  auto-browser easy -v -r "https://scholar.google.com" \
  "Research LLM papers"
```

### Template Management
```bash
# Create template
docker-compose run --rm auto-browser \
  auto-browser create-template "https://example.com" \
  --name example --description "Example template"

# List templates
docker-compose run --rm auto-browser \
  auto-browser list-sites

# Use template
docker-compose run --rm auto-browser \
  auto-browser easy --site example "https://example.com" \
  "Extract data"
```


### Installation Notes

#### Docker Installation (Recommended)
- Easiest setup with all dependencies included
- Docker Compose provides simple management
- Environment variables handled automatically
- Output directory mounted automatically
- Supports all features and demos
- Cross-platform compatibility

#### Manual Installation
- Requires Python 3.8 or higher
- Node.js LTS version recommended
- System dependencies handled by install script
- Playwright browsers installed automatically
- Package manager locks handled gracefully

## Advanced Workflow Examples

### 1. Time Management
```bash
# Complete timesheet workflow
auto-browser easy --interactive "https://workday.com" "Fill out timesheet for the week:
- Monday: 8h Development
- Tuesday: 6h Development, 2h Meetings
- Wednesday: 7h Development, 1h Documentation
Then submit for approval"
```

### 2. Social Media Management
```bash
# Cross-platform posting
auto-browser easy --interactive "https://buffer.com" "Create posts about auto-browser:
1. Twitter: Announce new release
2. LinkedIn: Technical deep-dive
3. Schedule both for optimal times"
```

### 3. Research Automation
```bash
# Academic research workflow
auto-browser easy -v -r "https://scholar.google.com" "Find papers about LLM automation:
1. Get top 10 most cited
2. Extract methodologies
3. Download PDFs
4. Create bibliography"
```

### 4. Project Setup
```bash
# Complete project initialization
auto-browser easy --interactive "https://github.com" "Create new project:
1. Initialize repository
2. Set up CI/CD
3. Configure team access
4. Create documentation"
```

## Demo Workflows

Auto-Browser includes comprehensive demos showcasing various automation capabilities:

### Basic Demos
1. **Basic Setup**: Simple data extraction and templates
2. **Simple Search**: Search functionality and data parsing
3. **Multi-Tab**: Working with multiple pages
4. **Form Interaction**: Form filling and validation
5. **Parallel Tasks**: Complex data extraction
6. **Clinical Trials**: Specialized data extraction

### Advanced Workflows
7. **Timesheet Automation**: Complete timesheet management
8. **Social Media Campaign**: Multi-platform content management
9. **Research Workflow**: Academic research automation
10. **Project Management**: Project setup and coordination

Try the demos:
```bash
# Make demos executable
chmod +x demos/*.sh

# Run specific demo
./demos/07_timesheet_automation.sh
```

## Configuration

### Environment Variables

- `OPENAI_API_KEY`: Your OpenAI API key (required)
- `LLM_MODEL`: Model to use (default: gpt-4o-mini)
- `BROWSER_HEADLESS`: Run browser in headless mode (default: true)

### Template Configuration

Templates are stored in YAML format:
```yaml
sites:
  finance:
    name: finance
    description: Extract stock information
    url_pattern: https://www.google.com/finance
    selectors:
      stock_price:
        css: .YMlKec.fxKbKc
        description: Current stock price
```

## Output Files

Results are saved with unique filenames including:
- Domain (e.g., google_com)
- Path (e.g., finance)
- Timestamp (YYYYMMDD_HHMMSS)
- .md extension

Example: `google_com_finance_20240120_123456.md`

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Author

Created by rUv (cause he could)

Repository: [https://github.com/ruvnet/auto-browser](https://github.com/ruvnet/auto-browser)

