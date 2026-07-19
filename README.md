# Fourier-Music-Analysis
# 🎵 Fourier Music Analysis

## Project Overview
This project demonstrates the **fundamental relationship between music and Fourier analysis** by generating a melody using pure sine waves and analyzing its frequency components using the Fast Fourier Transform (FFT).

## 🎯 What This Project Does
- Generates musical notes (Sa, Re, Ga, Ma, Pa, Dha) as pure sine waves
- Creates the complete "Twinkle Twinkle Little Star" melody
- Analyzes the audio signal using FFT
- Visualizes the frequency spectrum
- Identifies dominant frequencies in the composition

## 🔬 Mathematical Foundation

### Fourier Series
The project is built on the Fourier Series principle:

$$x(t) = a_0 + \sum_{n=1}^{\infty} (a_n \cos(n\omega_0 t) + b_n \sin(n\omega_0 t))$$

### Musical Notes as Sine Waves
Each musical note is a pure sinusoid:
$$Note(t) = \sin(2\pi f \cdot t)$$

Where:
- $f$ = frequency of the note (Hz)
- $t$ = time (seconds)

### Frequency Mapping
| Note | Indian Notation | Frequency (Hz) |
|------|----------------|----------------|
| C    | Sa             | 261.63         |
| D    | Re             | 293.66         |
| E    | Ga             | 329.63         |
| F    | Ma             | 349.23         |
| G    | Pa             | 392.00         |
| A    | Dha            | 440.00         |

## 📁 Project Structure
