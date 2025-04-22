<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>CyberShield Vulnerability Scanner</title>
  <link rel="stylesheet" href="style2.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
  <script src="script2.js" defer></script>
</head>

<body>
  <div class="main-content">
    <div id="sidebar2">
      <svg class="sidebar-icon2" width="40" height="40" viewBox="0 0 24 24" fill="none"
        xmlns="http://www.w3.org/2000/svg">
        <rect x="3" y="3" width="18" height="18" rx="4" stroke="#bfc0c0" stroke-width="2" />
        <path d="M8 8H16M8 12H14M8 16H12" stroke="#bfc0c0" stroke-width="2" stroke-linecap="round" />
      </svg>
      <div class="logo">
        <h2 id="cybershield">CYBERSHIELD</h2>
      </div>
    </div>
    <div class="scan-container">
      <div class="result scan-info">
        <div class="result-content">
          <div class="welcome-container">
            <div class="cybershield-logo">
              <div class="shield">
                <div class="shield-inner">
                  <div class="binary"></div>
                  <div class="lock">
                    <div class="lock-hook"></div>
                    <div class="lock-body"></div>
                  </div>
                  <div class="scan-line"></div>
                  <div class="circles">
                    <div class="circle"></div>
                    <div class="circle"></div>
                    <div class="circle"></div>
                  </div>
                </div>
              </div>
            </div>
            <div class="result-header">
              <div>
                <h3 class="heading">Welcome to CYBERSHIELD</h3>
              </div>
              <div class="tagline">
                OWASP Vulnerability Detection
              </div>
            </div>
          </div>
          <div class="progress-bar">
            <!-- <div class="progress-fill" style="width: 40%"></div> -->
          </div>
        </div>
      </div>
    </div>

    <div class="input-area">
      <div class="input-container">
        <form method="get" action="vulnerability" id="scanForm" onsubmit="showSpinner()">
          <input type="text" name="input" class="input-field" placeholder="Enter website URL to scan..." id="urlInput">
          <button type="submit" class="scan-button" id="submitBtn">Start Scan</button>
          <div class="loading-spinner" id="loadingSpinner">
            <div class="spinner"></div>
            <p>Scanning in progress...</p>
          </div>
        </form>
      </div>
      <div class="disclaimer">
        Always perform vulnerability scanning with proper authorization. Unauthorized scanning may be illegal.
      </div>
    </div>
  </div>

  <script>
    // Function to show loading spinner
    function showSpinner() {
      // First validate if the URL field is not empty
      const urlInput = document.getElementById('urlInput');
      if (!urlInput.value.trim()) {
        // If empty, prevent form submission
        event.preventDefault();
        return false;
      }
      
      // Show loading spinner
      document.getElementById('loadingSpinner').style.display = 'flex';
      
      // Disable submit button to prevent double submission
      document.getElementById('submitBtn').disabled = true;
      
      // Return true to allow form submission
      return true;
    }
  </script>
</body>
<style>
  /* Logo Styles */
  .cybershield-logo {
    position: relative;
    width: 120px;
    height: 150px;
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 20px auto;
  }

  .shield {
    position: absolute;
    width: 180px;
    height: 220px;
    background: linear-gradient(135deg, #3a7bd5, #2c3e50);
    border-radius: 55px 55px 8px 8px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
    overflow: hidden;
    z-index: 1;
  }

  .shield::before {
    content: '';
    position: absolute;
    top: 8px;
    left: 8px;
    right: 8px;
    bottom: 8px;
    background: linear-gradient(135deg, #4b8be2, #304358);
    border-radius: 48px 48px 4px 4px;
    z-index: 1;
  }

  .shield-inner {
    position: absolute;
    top: 15px;
    left: 15px;
    right: 15px;
    bottom: 15px;
    background-color: #1a2a3a;
    border-radius: 40px 40px 3px 3px;
    z-index: 2;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    overflow: hidden;
  }

  .lock {
    position: relative;
    width: 45px;
    height: 60px;
    margin-top: 25px;
    z-index: 3;
  }

  .lock-body {
    width: 45px;
    height: 38px;
    background-color: #f1c40f;
    border-radius: 4px;
    position: absolute;
    bottom: 0;
  }

  .lock-hook {
    width: 27px;
    height: 27px;
    border: 7px solid #f1c40f;
    border-bottom: none;
    border-radius: 12px 12px 0 0;
    position: absolute;
    top: 0;
    left: 50%;
    transform: translateX(-50%);
  }

  .scan-line {
    position: absolute;
    width: 130px;
    height: 4px;
    background-color: rgba(46, 204, 113, 0.8);
    top: 50%;
    left: 15px;
    animation: scan 2s infinite;
    box-shadow: 0 0 10px 2px rgba(46, 204, 113, 0.5);
    z-index: 3;
  }

  .binary {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 2;
    opacity: 0.2;
    overflow: hidden;
  }

  .binary::before {
    content: '10101010100110101010101001010010101010100101001010010100101010010100101001010';
    position: absolute;
    font-family: monospace;
    font-size: 6px;
    color: #2ecc71;
    white-space: wrap;
    top: 25px;
    left: 12px;
    line-height: 8px;
  }

  .tagline {
    display: block;
    margin-top: 5px;
    font-size: 18px;
    color: #2ecc71;
    text-align: center;
  }

  @keyframes scan {
    0%,
    100% {
      top: 30%;
      opacity: 0;
    }

    50% {
      top: 70%;
      opacity: 1;
    }
  }

  .circles {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 2;
  }

  .circle {
    position: absolute;
    border-radius: 50%;
    border: 1px solid rgba(46, 204, 113, 0.5);
    opacity: 0;
    animation: pulse 3s infinite;
  }

  .circle:nth-child(1) {
    width: 40px;
    height: 40px;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    animation-delay: 0s;
  }

  .circle:nth-child(2) {
    width: 65px;
    height: 65px;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    animation-delay: 0.5s;
  }

  .circle:nth-child(3) {
    width: 90px;
    height: 90px;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    animation-delay: 1s;
  }

  @keyframes pulse {
    0% {
      transform: translate(-50%, -50%) scale(0.5);
      opacity: 0;
    }

    50% {
      opacity: 0.8;
    }

    100% {
      transform: translate(-50%, -50%) scale(1.2);
      opacity: 0;
    }
  }

  /* Updated styles for better integration */
  .logo {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }

  #cybershield {
    margin-bottom: 15px;
    font-size: 18px;
    text-align: center;
    color: #bfc0c0;
  }

  #sidebar2 {
    display: flex;
    align-items: center;
  }

  .sidebar-icon2 {
    margin-bottom: 10px;
  }

  .result-content h3 {
    text-align: center;
    margin-bottom: 20px;
  }

  .welcome-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-bottom: 30px;
  }

  .cybershield-logo {
    width: 200px;
    /* Increased width */
    height: 220px;
    /* Increased height */
    margin: 30px auto;
  }

  #sidebar2 {
    display: flex;
    align-items: center;
    margin-top: 15px;
    /* Adds spacing between sidebar icon and text */
  }

  .logo {
    font-size: 22px;
    font-weight: bold;
    color: #bfc0c0;
  }

  .tagline {
    display: block;
    margin-top: 5px;
    font-size: 16px;
    color: #bfc0c0;
    text-align: center;
  }

  .result-header {
    display: flex;
    flex-direction: column;
  }

  body {
    position: relative;
    /* Ensure proper stacking context */
    overflow-x: hidden;
    /* Prevent horizontal scrolling */
  }

  .sidebar {
    position: fixed;
    /* Fixed position instead of part of flex layout */
    top: 0;
    left: 0;
    z-index: 1000;
    /* High z-index to appear over the main content */
    transition: transform 0.3s ease;
    /* For smooth animation */
    transform: translateX(0);
    /* Start visible */
    box-shadow: 2px 0 10px rgba(0, 0, 0, 0.3);
    /* Add shadow for depth */
  }

  /* Update main-content to take full width */
  .main-content {
    width: 100%;
    margin-left: 0;
    /* No margin since sidebar overlays */
    transition: margin-left 0.3s ease;
  }

  /* When sidebar is hidden */
  .sidebar-hidden {
    transform: translateX(-100%);
  }

  /* Loading spinner styles */
  .loading-spinner {
    display: none;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    margin-top: 20px;
    width: 100%;
  }

  .spinner {
    width: 50px;
    height: 50px;
    border: 5px solid rgba(46, 204, 113, 0.2);
    border-top-color: #2ecc71;
    border-radius: 50%;
    animation: spin 1s linear infinite;
  }

  .loading-spinner p {
    margin-top: 15px;
    color: #2ecc71;
    font-size: 16px;
    font-weight: 500;
  }

  @keyframes spin {
    to {
      transform: rotate(360deg);
    }
  }

  /* Form styles updated to accommodate loading spinner */
  #scanForm {
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  .input-container {
    width: 100%;
    max-width: 600px;
    margin: 0 auto;
  }

  .input-field {
    width: 100%;
    margin-bottom: 15px;
    padding: 12px;
    border-radius: 6px;
    border: 1px solid rgba(255, 255, 255, 0.1);
    background-color: rgba(255, 255, 255, 0.05);
    color: white;
    font-size: 16px;
  }

  .scan-button {
    padding: 12px 24px;
    background: linear-gradient(135deg, #2ecc71, #27ae60);
    color: white;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    font-weight: 600;
    transition: all 0.3s ease;
    font-size: 16px;
  }

  .scan-button:hover {
    background: linear-gradient(135deg, #27ae60, #219653);
    transform: translateY(-2px);
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  }

  .scan-button:disabled {
    background: #95a5a6;
    cursor: not-allowed;
    transform: none;
    box-shadow: none;
  }
</style>

</html>