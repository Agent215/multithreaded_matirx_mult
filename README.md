
# Lab 6: Parallel Programming
Parallel programing is a methodology used in software design that involves splitting up the required work among different cores, processors, or even machines. The end goal is to allow for faster processing of the data to improve performance of applications. There are many different ways to achieve this goal, in this lab we are analyzing a few of the existing solutions including [SIMD](#SIMD), [OpenMP](#OpenMP), and [MPI](#MPI).

## Table of Contents
* [Concepts](#Concepts)
	* [SIMD](#SIMD)
	* [OpenMP](#OpenMP)
	* [MPI](#MPI)
	* [Graphs](#Graphs)
* [Our Team](#Our-Team)

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

![regular matrix multiplication](https://github.com/3296Spring2020/parallel-matrix-02-fiordeliso-schultz-slipenchuk/raw/test/autoTestGraph.png)

## Our Team
Name: *02-Fiordeliso-Shultz-Slipenchuk*

Members:
* Evan Fiordeliso
* Matthew Slipenchuk
* Abraham Schultz
