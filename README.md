# mvpa_pronto_attempt

**My very first attempts in performing multivariate pattern analysis (MVPA) with neuroimaging data using *PRoNTo* software.** <br/>

In this attempt, the classification challenge is to differentiate 2 choices (i. gambles that were accepted and ii. those that were rejected) in a risky decision-making task. See the results presented on the poster below. The task is based on the second fMRI experiment reported here (Supplementary Materials: Methods): https://www.biorxiv.org/content/10.1101/473975v2

The analysis pipeline in Pronto can be mainly separated into 4 steps (The 'scripts' folder includes some sample scripts that are modified from those I used in my analysis). <br/>
Step1. (specify) Data & Design <br/>
Step2. Feature selection <br/>
Step3. Specify Model (choice which algorithm and cross-validation scheme, etc. I used multi-kernel learning here and a customised cross-validation model) <br/>
Step4. Run Model <br/>

For further details related to the analysis/pipeline and underlying algorithms applied, refer to Pronto's documentation (http://www.mlnl.cs.ucl.ac.uk/pronto/prtdocs.html). <br/>

Required software: PRoNTo software (download from http://www.mlnl.cs.ucl.ac.uk/pronto/prtsoftware.html) & Matlab. <br/>
The version used in my analysis: v2.1.

![poster_presenting_results](mvpa_ohbm19_poster.jpg)
