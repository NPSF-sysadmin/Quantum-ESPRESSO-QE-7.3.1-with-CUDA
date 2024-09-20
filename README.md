<h1>This Repo Contains QE-7.3.1-withcuda Binary Files for NPSF AIRAWAT Supercomputer</h1>

<p>This repository provides the precompiled Quantum ESPRESSO (QE) 7.3.1 with CUDA support, specifically for the NPSF AIRAWAT supercomputer environment.</p>

<h2>Clone the Repository</h2>

<p>To clone this repository and obtain the files, run the following command:</p>

<pre>
<code>git clone https://github.com/yash-vardhansingh/QE-7.3.1-withcuda.git</code>
</pre>

<h2>Contents</h2>

<h3>Binaries</h3>

<p>This repository contains QE 7.3.1 binaries built with CUDA for high-performance computing tasks. The binaries are located in the <code>bin/</code> folder inside the <code>qe-7.3.1-installation/</code> directory.</p>

<h3>SBATCH Job Script</h3>

<p>A sample SBATCH job script has been provided in the <code>test/</code> folder for submitting jobs on the NPSF AIRAWAT supercomputer:</p>
<ul>
    <li><code>qe-batch-job.sh</code>: This script can be used to submit a job running QE on the AIRAWAT cluster.</li>
</ul>

<h3>Test File</h3>

<p>We have included a simple test case to verify that the Quantum ESPRESSO installation is working correctly:</p>
<ul>
    <li><code>diamond.scf.in</code>: A simple input file to test the functionality of QE.</li>
</ul>

<p>You can use this test by modifying the batch job script to point to the <code>diamond.scf.in</code> file and running it on the supercomputer.</p>
