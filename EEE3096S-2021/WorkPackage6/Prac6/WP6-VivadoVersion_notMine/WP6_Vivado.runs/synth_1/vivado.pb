
x
Command: %s
53*	vivadotcl2G
3synth_design -top simple_cpu -part xa7a15tcpg236-2I2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xa7a15t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xa7a15t2default:defaultZ17-349h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
_
#Helper process launched with PID %s4824*oasys2
32402default:defaultZ8-7075h px? 
?
%s*synth2?
rStarting Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1260.684 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2

simple_cpu2default:default2
 2default:default2?
~C:/Users/jessm/OneDrive/Documents/University/Year 3/EEE3096S/WorkPackage6/VivadoProjectWP6/WP6_Vivado.srcs/sources_1/new/top.v2default:default2
32default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
alu2default:default2
 2default:default2?
~C:/Users/jessm/OneDrive/Documents/University/Year 3/EEE3096S/WorkPackage6/VivadoProjectWP6/WP6_Vivado.srcs/sources_1/new/alu.v2default:default2
12default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
alu2default:default2
 2default:default2
12default:default2
12default:default2?
~C:/Users/jessm/OneDrive/Documents/University/Year 3/EEE3096S/WorkPackage6/VivadoProjectWP6/WP6_Vivado.srcs/sources_1/new/alu.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
reg_mem2default:default2
 2default:default2?
?C:/Users/jessm/OneDrive/Documents/University/Year 3/EEE3096S/WorkPackage6/VivadoProjectWP6/WP6_Vivado.srcs/sources_1/new/RegMem.v2default:default2
32default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter ADDR_BITS bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
reg_mem2default:default2
 2default:default2
22default:default2
12default:default2?
?C:/Users/jessm/OneDrive/Documents/University/Year 3/EEE3096S/WorkPackage6/VivadoProjectWP6/WP6_Vivado.srcs/sources_1/new/RegMem.v2default:default2
32default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
addr2default:default2
52default:default2
reg_mem2default:default2?
~C:/Users/jessm/OneDrive/Documents/University/Year 3/EEE3096S/WorkPackage6/VivadoProjectWP6/WP6_Vivado.srcs/sources_1/new/top.v2default:default2
332default:default8@Z8-689h px? 
?
synthesizing module '%s'%s4497*oasys2
CU2default:default2
 2default:default2?
}C:/Users/jessm/OneDrive/Documents/University/Year 3/EEE3096S/WorkPackage6/VivadoProjectWP6/WP6_Vivado.srcs/sources_1/new/CU.v2default:default2
32default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter ADDR_BITS bound to: 5 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter INSTR_WIDTH bound to: 20 - type: integer 
2default:defaulth p
x
? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
instruction_reg2default:default2?
}C:/Users/jessm/OneDrive/Documents/University/Year 3/EEE3096S/WorkPackage6/VivadoProjectWP6/WP6_Vivado.srcs/sources_1/new/CU.v2default:default2
352default:default8@Z8-6014h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CU2default:default2
 2default:default2
32default:default2
12default:default2?
}C:/Users/jessm/OneDrive/Documents/University/Year 3/EEE3096S/WorkPackage6/VivadoProjectWP6/WP6_Vivado.srcs/sources_1/new/CU.v2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

simple_cpu2default:default2
 2default:default2
42default:default2
12default:default2?
~C:/Users/jessm/OneDrive/Documents/University/Year 3/EEE3096S/WorkPackage6/VivadoProjectWP6/WP6_Vivado.srcs/sources_1/new/top.v2default:default2
32default:default8@Z8-6155h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
rst2default:default2
CU2default:defaultZ8-7129h px? 
?
%s*synth2?
rFinished Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1260.684 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Constraint Validation : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1260.684 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xa7a15tcpg236-2I
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1260.684 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
Loading part %s157*device2$
xa7a15tcpg236-2I2default:defaultZ21-403h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
CU2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                   RESET |                              000 |                             0000
2default:defaulth p
x
? 
?
%s
*synth2s
_                  DECODE |                              001 |                             0001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 EXECUTE |                              010 |                             0010
2default:defaulth p
x
? 
?
%s
*synth2s
_              MEM_ACCESS |                              011 |                             0100
2default:defaulth p
x
? 
?
%s
*synth2s
_              WRITE_BACK |                              100 |                             1000
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
CU2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1260.684 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    8 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
h
%s
*synth2P
<	              256 Bit	(32 X 8 bit)          RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 21    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 9     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2i
UPart Resources:
DSPs: 45 (col length:60)
BRAMs: 50 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
|
+Unused sequential element %s was removed. 
4326*oasys2-
data_memory/mem_array_reg2default:defaultZ8-6014h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
rst2default:default2

simple_cpu2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[15]2default:default2

simple_cpu2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[14]2default:default2

simple_cpu2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[13]2default:default2

simple_cpu2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[12]2default:default2

simple_cpu2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[11]2default:default2

simple_cpu2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[10]2default:default2

simple_cpu2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[9]2default:default2

simple_cpu2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[8]2default:default2

simple_cpu2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[7]2default:default2

simple_cpu2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[6]2default:default2

simple_cpu2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[5]2default:default2

simple_cpu2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[4]2default:default2

simple_cpu2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[3]2default:default2

simple_cpu2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[2]2default:default2

simple_cpu2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[1]2default:default2

simple_cpu2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[0]2default:default2

simple_cpu2default:defaultZ8-7129h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys23
CU1/FSM_sequential_state_reg[2]2default:default2

simple_cpu2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys23
CU1/FSM_sequential_state_reg[1]2default:default2

simple_cpu2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys23
CU1/FSM_sequential_state_reg[0]2default:default2

simple_cpu2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:10 ; elapsed = 00:00:15 . Memory (MB): peak = 1260.684 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Timing Optimization : Time (s): cpu = 00:00:10 ; elapsed = 00:00:15 . Memory (MB): peak = 1260.684 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
zFinished Technology Mapping : Time (s): cpu = 00:00:10 ; elapsed = 00:00:15 . Memory (MB): peak = 1260.684 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
tFinished IO Insertion : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 1260.684 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 1260.684 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 1260.684 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 1260.684 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 1260.684 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Renaming Generated Nets : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 1260.684 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
=
%s*synth2%
+-+-----+------+
2default:defaulth px? 
=
%s*synth2%
| |Cell |Count |
2default:defaulth px? 
=
%s*synth2%
+-+-----+------+
2default:defaulth px? 
=
%s*synth2%
+-+-----+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
N
%s
*synth26
"|      |Instance |Module |Cells |
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
N
%s
*synth26
"|1     |top      |       |     0|
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 1260.684 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 25 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 1260.684 ; gain = 0.000
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Complete : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 1260.684 ; gain = 0.000
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1260.6842default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1260.6842default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
1e71cb852default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
202default:default2
252default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:152default:default2
00:00:232default:default2
1260.6842default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?C:/Users/jessm/OneDrive/Documents/University/Year 3/EEE3096S/WorkPackage6/VivadoProjectWP6/WP6_Vivado.runs/synth_1/simple_cpu.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2~
jExecuting : report_utilization -file simple_cpu_utilization_synth.rpt -pb simple_cpu_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Nov  3 16:59:56 20212default:defaultZ17-206h px? 


End Record