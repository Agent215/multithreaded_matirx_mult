# Lab 6: Parallel Programming
Parallel programing is a methodology used in software design that involves splitting up the required work among different cores, processors, or even machines. The end goal is to allow for faster processing of the data to improve performance of applications. There are many different ways to achieve this goal, in this lab we are analyzing a few of the existing solutions including [SIMD](#SIMD), [OpenMP](#OpenMP), and [MPI](#MPI).

## Table of Contents
* [Concepts](#Concepts)
	* [SIMD](#SIMD)
	* [OpenMP](#OpenMP)
	* [MPI](#MPI)
* [Graphs](#Graphs)
* [Tasks](#Tasks)
* [Project Lifecycle](#Project-Lifecycle)
* [Our Team](#Our-Team)
	* [Contributions](#Contributions)
	* [Security & Review](#Security-&-Review)
		* [Branch Security](#Branch-Security)
		* [Review Process](#Review-Process)

## Concepts
### SIMD
By: *Matthew Slipenchuk*

Single Instruction, Multiple Data (SIMD) is a class of parallel computing. It describes a system that performs the same operation on multiple data points at the same time. By vectorizing the matrix multiplication algorithm we are able to divide our data into chunks and execute a single CPU instruction on a chunk of data. This is opposed to the iterative approach of executing a single CPU instruction on a single data point at a time.

### OpenMP
By: *Abraham Schultz*

OpenMP is a library for multi-threading programming. It is a form of symmetric multi-processing, or shared-memory processing. The main purpose of this is for optimizing algorithms for use on a single computer with multiple processors. The programmer can specify particular loops that need to be run in parallel as well as define the scope of the variable contained therein. The library allows the programmer to employ parallelization using a relatively simple and easy to use interface.

### MPI
By: *Evan Fiordeliso*

MPI stands for Message Passing Interface which is a portable message-passing standard designed by a group of researchers. MPI is another method of implementing parallel computing, but what makes this method different is how it divides the work. In the other two forms of parallel computing discussed, all of the work is completed on the same machine; however, with this scheme, the work is divided among multiple machines communicating with a controlling machine. There is also the ability to run multiple processes on each machine allowing you to take advantage of the multiple cores that exist on the machines. One possible downside is that messages must be passed over the network and depending on the size of the messages it could cause some bottleneck. While it may be simple to implement, it is not as simple as the other two methods but comes along with great performance benefits.

## Graphs

### Vectorization, Optimization, OMP & Matrix Size Comparison 
![regular matrix multiplication](https://github.com/3296Spring2020/parallel-matrix-02-fiordeliso-schultz-slipenchuk/raw/test/autoTestGraph.png)

### MPI Node Size & Matrix Size Comparison
![mpi matrix multiplication](https://github.com/3296Spring2020/parallel-matrix-02-fiordeliso-schultz-slipenchuk/blob/week2Dev/MPI.png)

## Tasks

**Mandatory Tasks:**
* ✅ Automate running  matrix multiplication on different size matrix and generating data in tabular format for graph production.
* ✅ Matrix multiplication in C  on Wolfgand cluster without SIMD and without parallelization
* ✅ Matrix multiplication in C  on Wolfgand cluster with  SIMD (rewrite algo accordingly and try with and without -O3)
* ✅ Matrix multiplication in C  on Wolfgand cluster with  OpenMP (easy, try mmult_omp_timing)  
* ✅ Matrix multiplication in C  on Wolfgand cluster with MPI (Distribitued Memory) 
* ✅ Produce graphs   
* ✅ Read input matrix from two files as described in MPI and OpenMP on Wolfgand Cluster.docx Preview the document
(section: main program).

**Additional Tasks:**
* Matrix multiplication in C  on Wolfgand cluster with both  OpenMP and MPI. 
* ~~Matrix multiplication parallelization in C on your own computer (SIMT(gpu), OpenMP or MPI).~~
* ~~Matrix multiplication parallelization in Java on your own computer (SIMD, SMP or other).~~
* ✅ Automate the production of graph with  Gnuplot or other tools.

## Project Lifecycle

[Trello Board](https://trello.com/b/IOl6l6SS/matrix-mult-lab-6)

We used the Trello Board to keep track of the tasks at hand and who the main lead on the specific task is. It definitely helped as I was creating this README file to be able to credit people with their contributions to the project. We also used it to write comments about our progress occasionally although most of our communication occurred over SMS. I've found that the usual cycle of write code, compile code, run code, then test code seemed to fit though testing the code was sometimes harder than other times. The hardest part to test for this project was the MPI implementation because trying to find where the issues arose  was often hard to find with vague error messages. For automating the testing of multiple size matricies and producing the graphs, we used a bash script that ran the program multiple times and piping the output into a file. Using gnuplot, we took the data from the output files to produce the graphs. To ensure validity we checked to make sure that one algorithm obtains the same output as another algorithm. Testing took up a lot of our time because we ran into bugs that were rather difficult to track down. Being that there wasn't too much code to write it didn't take too much time, a significantly less time than it took us to test the project.

## Our Team
Name: *02-Fiordeliso-Shultz-Slipenchuk*

Members:
* Evan Fiordeliso
* Matthew Slipenchuk
* Abraham Schultz

### Contributions

#### Evan Fiordeliso
* Created and maintained the README file
* Assisted other teammates with debugging
* Created the vectorized matrix multiplication algorithm
* Fixed timing calculation on the OpenMP implementation
* Implemented storing the answer in output matrix for the MPI implementation

#### Matthew Slipenchuk
* Created script to automatically test and graph the diffent algorithms
* Created initial automation of graph production with Gnuplot
* Created the MPI implementation
* Assisted other teammates with debugging
* Converted mmult_mpi_omp to read in matrix files

#### Abraham Schultz
* Created the trello board
* Assisted other teammates with debugging
* Added OpenMP to the autoTest file and its output data to the Gnuplot file
* Added MPI to the autoTest file and its output data to a seprate Gnuplot file
* Created Testing Driver program for running mmult and mmult_vectorized functions


## Security & Review
### Branch Security
Brahm locked the master branch on the first day of the project as described in GitHW2 Lab2. All other branchs had no locks to facilitate rapid collaborative development. 
### Review Process
Every time enough work was completed to satisfy weekly review requirements, the last team member to commit changes would create a pull request to master and assign the other members to review all files. Then the reviewers would conduct their review, ask questions, and approve when ready. We would also review each others work during the development process to help with bugs.
