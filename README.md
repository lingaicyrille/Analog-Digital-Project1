<h1>Analog & Digital Project1</h1>


<h2>Description</h2>
This project provides a basic understanding of the general principles that govern analogue and digital communications systems such as traditional analog communication techniques including AM, FM and modern digital systems techniques such as ASK, FSK and BPSK. In all these digital modulation techniques our analog signal is changed into binary numbers at each of our set frequencies(sample rates) the binary 1's and 0's are then transmitted to the intended recipient and converted back to the original signal form.
Shift Keying-Data modulation technique which allows you to transmit signals as binary inputs. 
FSK- In frequency shift keying, the frequency of the carrier signal varies with respect to the changes by the digital signal.
ASK- Amplitude of the carrier wave which is altered in accordance with the modulating signal.
BPSK- Referred to as the simplest form of phase shift keying using two signals separated by 180 degrees. Phase shift keying data is transmitted by a continuous reversal of the phase. In each of these steps, we modulated and demolulated the signal.

<br />


<h2>Environments Used </h2>

- <b>MatLab</b> (21H2)

<h2>Program walk-through:</h2>

<p align="center">
Original Signal: <br/>

<img src="https://i.imgur.com/kjrFwjk.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Main Signal:  <br/>
<img src="https://imgur.com/pd42Co2.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Double Side Band: <br/>
Double Sideband (DSB) modulation is a traditional amplitude modulation (AM) technique used in communication systems. In DSB modulation, both the upper and lower sidebands, along with the carrier frequency, are transmitted. The information is redundantly contained in both sidebands, and this results in a signal that occupies more bandwidth compared to Single Sideband (SSB) modulation. In DSB modulation, both the upper sideband (USB) and the lower sideband (LSB) are transmitted along with the carrier signal. DSB modulation is less bandwidth-efficient compared to SSB modulation. This is because both sidebands contain identical information, leading to redundancy. DSB modulation was historically used in early radio communication systems. However, as technology has advanced, more bandwidth-efficient modulation schemes, such as SSB and Frequency Modulation (FM), are commonly used in modern communication systems. Simplicity: DSB modulation is relatively simple to implement. Compatibility: DSB signals can be received by traditional AM receivers. Inefficient Bandwidth Utilization: The redundancy of information in both sidebands makes DSB modulation less bandwidth-efficient. While DSB modulation was historically used in early radio systems, its use has diminished in favor of more efficient modulation schemes. In modern communication systems, where efficient bandwidth utilization is essential, Single Sideband (SSB) and other advanced modulation techniques are often preferred over DSB modulation.
<img src="https://imgur.com/X730jZM.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Single Side Band (SSB):  <br/>
Single Sideband (SSB) modulation is a technique used in communication systems to transmit information more efficiently than traditional amplitude modulation (AM). SSB transmission only uses one of the sidebands, either the upper sideband (USB) or the lower sideband (LSB), along with the carrier frequency. In traditional AM, the information is redundantly transmitted in both the upper and lower sidebands. SSB eliminates this redundancy by transmitting only one sideband along with the carrier. SSB uses the available frequency spectrum more efficiently compared to full AM, making it particularly useful in applications where bandwidth is limited or expensive. Depending on the design, a communication system using SSB can transmit either the Upper Sideband (USB) or the Lower Sideband (LSB). The choice between USB and LSB is arbitrary and depends on the convention adopted by the communication system. SSB modulation is commonly used in long-distance radio communications, such as in amateur radio (ham radio) transmissions and maritime communication. It is also employed in certain military and aviation applications. Single Sideband modulation is a more efficient use of bandwidth compared to traditional AM, making it suitable for applications where spectrum efficiency is crucial. However, SSB signals require more sophisticated receivers to demodulate the transmitted information correctly.
<img src="https://imgur.com/WjJ6gr0.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Analog Modulation Signal (AM):  <br/>
It is a modulation scheme used in analog communication systems to transmit information over a carrier wave by varying the amplitude of the carrier signal. In AM, the audio or data signal modulates the amplitude of the carrier wave. In AM, the amplitude of the carrier signal is varied in proportion to the instantaneous amplitude of the modulating signal (usually an audio signal or data signal). AM is relatively simple to implement, and AM receivers are less complex compared to FM receivers but AM is more susceptible to noise, and its bandwidth efficiency is lower compared to other modulation schemes like Frequency Modulation (FM). AM is used in broadcast radio, where it is commonly employed for long-distance transmission. It is also used in amplitude modulation of video signals in analog television.
While AM is still used in certain applications, digital modulation techniques like FM and Phase Shift Keying (PSK) have become more prevalent in modern communication systems due to their better noise resistance and bandwidth efficiency.
<img src="https://imgur.com/sJjHQsf.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />

Frequency Modulation (FM):  <br/>
 It is a modulation scheme used in analog and digital communication systems to transmit information over a carrier wave by varying the frequency of the carrier signal. In FM, the audio or data signal modulates the frequency of the carrier wave. In FM, the frequency of the carrier signal is varied in proportion to the instantaneous amplitude of the modulating signal (usually an audio signal or data signal). As the amplitude of the modulating signal changes, the frequency of the carrier wave changes accordingly. This results in a frequency-modulated signal. FM is widely used in broadcast radio, two-way radio communication, and audio broadcasting.
Frequency modulation is a key modulation technique in communication systems, offering advantages in terms of signal quality and noise resistance. It is commonly used in scenarios where high-quality audio transmission is essential.
<img src="https://imgur.com/Kgd8UGM.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Sampling:  <br/>
<img src="https://imgur.com/ibplRZz.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Frequency Shift Keying (FSK) (Modulation and Demodulation Signal):  <br/>
It is a digital modulation scheme used in communication systems to transmit digital data over a carrier wave by varying the frequency of the carrier signal. In FSK, the binary data is represented by different frequencies. FSK is commonly used in various communication systems, including radio frequency communication, data modems, and wireless technologies. It is known for its simplicity and robustness against certain types of noise. FSK can be less susceptible to amplitude-based noise compared to other modulation schemes like Amplitude Shift Keying (ASK).
<img src="https://imgur.com/Et9EL51.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Amplitude Shift Keying (ASK):  <br/>
ASK is used to transmit digital data over a communication channel by varying certain properties of a carrier wave. ASK is relatively simple and easy to implement. It is used in various communication systems, including optical fiber communication and some wireless communication applications. One disadvantage of ASK is that it may be more susceptible to noise and interference compared to some other modulation schemes, such as Phase Shift Keying (PSK) or Frequency Shift Keying (FSK).
<img src="https://imgur.com/k9woPhR.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Binary Phase Shift Keying (BPSK):  <br/>
BPSK is commonly used in various communication systems, including wireless communication, satellite communication, and digital audio broadcasting. It is known for its simplicity and efficiency in transmitting binary data. One advantage of BPSK is that it is less susceptible to errors caused by noise or interference compared to some other modulation schemes. However, it may not be as bandwidth-efficient as more advanced modulation schemes in certain situations. BPSK is used to transmit binary data, where 0 and 1 are represented by different phases of the carrier signal. In BPSK, the carrier signal's phase is shifted by 180 degrees (π radians) for one of the binary values (usually 1), and there is no phase shift for the other binary value (usually 0). This means that the phase of the carrier wave changes between two states to represent the binary information. For binary 0: The carrier wave remains in its original phase.
For binary 1: The carrier wave's phase is inverted by 180 degrees. 

<img src="https://imgur.com/Kcv0lXE.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
</p>

<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>

