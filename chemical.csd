<Cabbage>
form caption("Chemical") size(500, 700), guiMode("queue"), pluginId("che1")
vslider bounds(4, 40, 40, 90), channel("step1"), range(0, 127, 60, 1, 1)
vslider bounds(36, 40, 40, 90), channel("step2"), range(0, 127, 60, 1, 1)
vslider bounds(66, 40, 40, 90), channel("step3"), range(0, 127, 60, 1, 1)
vslider bounds(96, 40, 40, 90), channel("step4"), range(0, 127, 60, 1, 1)
vslider bounds(126, 40, 40, 90), channel("step5"), range(0, 127, 60, 1, 1)
vslider bounds(156, 40, 40, 90), channel("step6"), range(0, 127, 60, 1, 1)
vslider bounds(186, 40, 40, 90), channel("step7"), range(0, 127, 60, 1, 1)
vslider bounds(216, 40, 40, 90), channel("step8"), range(0, 127, 60, 1, 1)
vslider bounds(246, 40, 40, 90), channel("step9"), range(0, 127, 60, 1, 1)
vslider bounds(276, 40, 40, 90), channel("step10"), range(0, 127, 60, 1, 1)
vslider bounds(306, 40, 40, 90), channel("step11"), range(0, 127, 60, 1, 1)
vslider bounds(336, 40, 40, 90), channel("step12"), range(0, 127, 60, 1, 1)
vslider bounds(366, 40, 40, 90), channel("step13"), range(0, 127, 60, 1, 1)
vslider bounds(396, 40, 40, 90), channel("step14"), range(0, 127, 60, 1, 1)
vslider bounds(426, 40, 40, 90), channel("step15"), range(0, 127, 60, 1, 1)
vslider bounds(456, 40, 40, 90), channel("step16"), range(0, 127, 60, 1, 1)


vslider bounds(4, 240, 40, 90) channel("att")  range(0.001, .2, 0.01, 1,0.01)
vslider bounds(36, 240, 40, 90) channel("dec") range(0.001, 1, 0.5, 1, 0.01)
vslider bounds(66, 240, 40, 90) channel("sus") range(0.01, 1, 0.5, 1, 0.01)
vslider bounds(96, 240, 40, 90) channel("rel") range(0.001, 1, .5, 1, 0.01)
vslider bounds(126, 240, 40, 90) channel("kpa")  range(0, 10, 0, 1, 1)
vslider bounds(156, 240, 40, 90) channel("kpb") range(0, 10, 0, 1, 1)
vslider bounds(186, 240, 40, 90) channel("kpc") range(0, 10, 0, 1, 1)
vslider bounds(216, 240, 40, 90) channel("kpd") range(0, 10, 0, 1, 1)
vslider bounds(246, 240, 40, 90) channel("kfma")  range(0, 1, 0, 1, 0.01)
vslider bounds(276, 240, 40, 90) channel("kfmb") range(0, 1, 0, 1, 0.01)
vslider bounds(306, 240, 40, 90) channel("kfmc") range(0, 1, 0, 1, .01)
vslider bounds(336, 240, 40, 90) channel("kfmd") range(0, 1, 0, 1, .01)
vslider bounds(366, 240, 40, 90) channel("kalgo") range(0, 7, 0, 1, 1)
vslider bounds(396, 240, 40, 90) channel("kfb") range(0, 1, 0., 1, 0.01)
vslider bounds(426, 240, 40, 90) channel("gain1") range(0, .3, 0, 1, 0.001)


checkbox bounds(14, 132, 22, 22) channel("g1")
checkbox bounds(44, 132, 22, 22) channel("g2")
checkbox bounds(74, 132, 22, 22) channel("g3")
checkbox bounds(104, 132, 22, 22) channel("g4")
checkbox bounds(134, 132, 22, 22) channel("g5")
checkbox bounds(164, 132, 22, 22) channel("g6")
checkbox bounds(194, 132, 22, 22) channel("g7")
checkbox bounds(224, 132, 22, 22) channel("g8")
checkbox bounds(254, 132, 22, 22) channel("g9")
checkbox bounds(284, 132, 22, 22) channel("g10")
checkbox bounds(314, 132, 22, 22) channel("g11")
checkbox bounds(344, 132, 22, 22) channel("g12")
checkbox bounds(374, 132, 22, 22) channel("g13")
checkbox bounds(404, 132, 22, 22) channel("g14")
checkbox bounds(434, 132, 22, 22) channel("g15")
checkbox bounds(464, 132, 22, 22) channel("g16")
checkbox bounds(464, 162, 22, 22) channel("startstop")
button bounds(434, 162, 22, 22) channel("seed") text(" ")
checkbox bounds(404, 162, 22, 22) channel("sync")
checkbox bounds(374, 162, 22, 22) channel("trig_g")
rslider bounds(10, 158, 60, 60) channel("tempo") range(20, 300, 0, 1, 1)
rslider bounds(70, 158, 60, 60) channel("swing") range(0, .05, 0, 1, 0.001)
rslider bounds(130, 158, 60, 60) channel("slide") range(0, 1, 0, 1, 0.001)
rslider bounds(190, 158, 60, 60) channel("direction") range(0, 1, 0, 1,0.001)
rslider bounds(250, 158, 60, 60) channel("div") range(1, 16, 4, 1, 1)
rslider bounds(310, 158, 60, 60) channel("len") range(1, 16, 16, 1, 1)
</Cabbage>

<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 --midi-key-cps=4 --midi-velocity-amp=5
</CsOptions>

<CsInstruments>
ksmps = 32
nchnls = 2
0dbfs = 1
opcode FMsynth, a,kkkkkkkkkkki
kpitch,kpa,kpb,kpc,kpd, kfma,kfmb,kfmc,kfmd,kalgo,kfb,isine xin


if kalgo == 0 then
acarrier init 0 ; init for feedback
amoda poscil3  kfma,kpitch*a(kpb),isine
amodb poscil3  kfmb,kpitch*a(kpc),isine
amodc poscil3  kfmc,kpitch*a(kpd),isine
aphase phasor kpitch*kpa
acarrier tablei aphase+amoda+amodb+amodc+(acarrier*a(kfb)), isine, 1, 0, 1



;[a]+b+c+d


elseif kalgo == 1 then
acarrier init 0 ; init for feedback
amoda poscil3  kfma,kpitch*a(kpb),isine
amodb poscil3  kfmb,amoda+kpitch*a(kpc),isine
amodc poscil3  kfmc,amodb+kpitch*a(kpd),isine
aphase phasor kpitch*kpa
acarrier tablei aphase+amodc+(acarrier*a(kfb)), isine, 1, 0, 1

;[a]
; |
; b
; |
; c
; |
; d

elseif kalgo == 2 then
acarrier init 0 ; init for feedback
amoda poscil3  kfma,kpitch*a(kpb),isine
amodb poscil3  kfmb,kpitch*a(kpc),isine
amodc poscil3  kfmc,amoda+amodb+(kpitch*a(kpd)),isine
aphase phasor kpitch*kpa
acarrier tablei aphase+amodc+(acarrier*a(kfb)), isine, 1, 0, 1

; [a]+ b
;    |
;    c
;    |
;    d

elseif kalgo == 3 then
acarrier init 0 ; init for feedback
amoda poscil3  kfma,kpitch*a(kpb),isine
amodb poscil3  kfmb,kpitch*a(kpc),isine
amodc poscil3  kfmc,amodb+kpitch*a(kpd),isine
aphase phasor kpitch*kpa
acarrier tablei aphase+amoda+amodc+(acarrier*a(kfb)), isine, 1, 0, 1

; b
; |
; c + [a]
;   |
;   d

elseif kalgo == 4 then
acarrier init 0 ; init for feedback
amoda poscil3  kfma,kpitch*a(kpb),isine
amodb poscil3  kfmb,amoda +(kpitch*a(kpc)),isine
amodc poscil3  kfmc,kpitch*a(kpd),isine
aphase phasor kpitch*kpa
acarrier tablei aphase+amodb+amodc+(acarrier*a(kfb)), isine, 1, 0, 1

;[a]
; |
; b + c
;   |
;   d

elseif kalgo == 5 then
acarrier init 0 ; init for feedback
amoda poscil3  kfma,kpitch*a(kpb),isine
amodb poscil3  kfmb,(kpitch+amoda)+(kpitch*a(kpc)),isine
amodc poscil3  kfmc,kpitch*a(kpd),isine
aphase phasor kpitch*kpa
acarrier tablei aphase+amodc+(acarrier*a(kfb)), isine, 1, 0, 1
acarrier = acarrier + amodb

;[a]  c
; |   |
; b + d

elseif kalgo == 6 then
acarrier init 0 ; init for feedback
amoda poscil3  kfma,kpitch*a(kpb),isine
amodb poscil3  kfmb,kpitch+amoda+(kpitch*a(kpc)),isine
amodc poscil3  kfmc,kpitch+amoda+(kpitch*a(kpd)),isine
aphase phasor kpitch*kpa
acarrier tablei aphase+amoda+(acarrier*a(kfb)), isine, 1, 0, 1
acarrier = acarrier + amodb +amodc

;    [a]
;  /  |  \
; b + c + d

elseif kalgo == 7 then
acarrier init 0 ; init for feedback
amoda poscil3  kfma,(kpitch*a(kpb))+(amoda*(kpitch*a(kfb))),isine
amodb poscil3  kfmb,kpitch+amoda+(kpitch*a(kpc)),isine
amodc poscil3  kfmc,kpitch+(kpitch*a(kpd)),isine
aphase phasor kpitch*kpa
acarrier tablei aphase+(acarrier*a(kfb)), isine, 1, 0, 1
acarrier = acarrier + amodb +amodc

;[a]
; |
; b + c + d

endif


        xout acarrier
endop
opcode myADSR, k, kkkkkk
; Args: kAttack(sec), kDecay(sec), kSustain(0..1), kRelease(sec), kGate, kReset
kAttack, kDecay, kSustain, kRelease, kGate, kReset xin

; --- Persistent state ---
kState      init 0    ; 0=OFF, 1=ATTACK, 2=DECAY, 3=SUSTAIN, 4=RELEASE
kCurrentVal init 0
kPrevGate   init 0
kRInc       init 0    ; release increment, recomputed at gate-off

; --- Protect against zero times ---
kAttackSec  = max(kAttack, 1e-6)
kDecaySec   = max(kDecay,  1e-6)
kReleaseSec = max(kRelease,1e-6)

; --- Per-control-block increments ---
kAInc = (ksmps / (sr * kAttackSec))                    ; rise 0→1
kDInc = (ksmps * (1 - kSustain)) / (sr * kDecaySec)   ; fall 1→sustain

; --- Gate edge detection ---
if (kPrevGate == 0 && kGate == 1) then
    kState = 1
    kCurrentVal = 0
elseif (kPrevGate == 1 && kGate == 0) then
    kState = 4
    kRInc = (ksmps * kCurrentVal) / (sr * kReleaseSec)
endif

; --- State machine ---
if (kState == 0) then
    kCurrentVal = 0

elseif (kState == 1) then ; ATTACK
    kCurrentVal += kAInc
    if (kCurrentVal >= 1) then
        kCurrentVal = 1
        kState = 2
    endif

elseif (kState == 2) then ; DECAY
    kCurrentVal -= kDInc
    if (kCurrentVal <= kSustain) then
        kCurrentVal = kSustain
        kState = 3
    endif

elseif (kState == 3) then ; SUSTAIN
    kCurrentVal = kSustain

elseif (kState == 4) then ; RELEASE
    kCurrentVal -= kRInc
    if (kCurrentVal <= 0) then
        kCurrentVal = 0
        kState = 0
    endif
endif

kPrevGate = kGate
xout kCurrentVal
endop

giSine ftgen 0, 0, 2^10, 10, 1
gkc = 0
instr 1
kSteps[] init 16
kGate[] init 16
kSteps[0] cabbageGetValue "step1"
kSteps[1] cabbageGetValue "step2"
kSteps[2] cabbageGetValue "step3"
kSteps[3] cabbageGetValue "step4"
kSteps[4] cabbageGetValue "step5"
kSteps[5] cabbageGetValue "step6"
kSteps[6] cabbageGetValue "step7"
kSteps[7] cabbageGetValue "step8"
kSteps[8] cabbageGetValue "step9"
kSteps[9] cabbageGetValue "step10"
kSteps[10] cabbageGetValue "step11"
kSteps[11] cabbageGetValue "step12"
kSteps[12] cabbageGetValue "step13"
kSteps[13] cabbageGetValue "step14"
kSteps[14] cabbageGetValue "step15"
kSteps[15] cabbageGetValue "step16"
kGate[0] cabbageGetValue "g1"
kGate[1] cabbageGetValue "g2"
kGate[2] cabbageGetValue "g3"
kGate[3] cabbageGetValue "g4"
kGate[4] cabbageGetValue "g5"
kGate[5] cabbageGetValue "g6"
kGate[6] cabbageGetValue "g7"
kGate[7] cabbageGetValue "g8"
kGate[8] cabbageGetValue "g9"
kGate[9] cabbageGetValue "g10"
kGate[10] cabbageGetValue "g11"
kGate[11] cabbageGetValue "g12"
kGate[12] cabbageGetValue "g13"
kGate[13] cabbageGetValue "g14"
kGate[14] cabbageGetValue "g15"
kGate[15] cabbageGetValue "g16"
ksync chnget "sync"
ktemp chnget "tempo"
khbpm chnget "HOST_BPM"
kdiv chnget "div"
kstart chnget "startstop"
kswinga cabbageGetValue "swing"
kseed cabbageGetValue "seed"
kAtt chnget "att"
kDec chnget "dec"
kSus chnget "sus"
kRel chnget "rel"
kpa  cabbageGetValue "kpa"
kpb  cabbageGetValue "kpb"
kpc  cabbageGetValue "kpc"
kpd  cabbageGetValue "kpd"
kfma  cabbageGetValue "kfma"
kfmb cabbageGetValue "kfmb"
kfmc  cabbageGetValue "kfmc"
kfmd  cabbageGetValue "kfmd"
kalgo  cabbageGetValue "kalgo"
kfb  cabbageGetValue "kfb"
kgainA cabbageGetValue "gain1"
ktg chnget "trig_g"
klen chnget "len"

if ksync == 1 then
    ktempo = khbpm
else
    ktempo limit ktemp, 20, 300
endif

if kstart == 1 then
    kfloor round kdiv
    kt = ktempo/(60*kfloor)
    kphasor phasor kt
    kswinglfo lfo 1, kt*4, 1
    kswinglfo=-kswinglfo
    kswingo = kswinglfo * kswinga
    kswingphasor = kphasor + kswingo
    kswingphasor = kswingphasor - int(kswingphasor)

    kstep = int(kswingphasor*16%klen)


kTrig changed kstep
kt32 = kt/8             ; duration of a 32nd note if kt is step length
knext = (kstep + 1) % 16


    kMinGateTime = 0.05  ; minimum 50ms gate time
    kGateTimer init 0
    if kTrig == 1 && kGate[kstep] == 1 then
        kGateTimer = kMinGateTime
        kg = 1
    elseif kGateTimer > 0 then
        kGateTimer = kGateTimer - (ksmps/sr)
        kg = 1
    else
        kg = 0
    endif

    ks mtof kSteps[kstep]
else kg = 0
endif

ki = 0
 kc changed kseed
if kc == 1 then
    while ki < 16 do
        ki = ki + 1
                 
        Sstr sprintfk "step%d", ki
        Sgstr sprintfk "g%d", ki   
        krand random 0, 127
        kgrand random 0, 1
       
        cabbageSetValue Sstr, krand, kc
        cabbageSetValue Sgstr, round(kgrand), kc
    od

endif


kEnv myADSR kAtt, kDec, kSus, kRel, kg, 0
kpE portk kEnv, .001
afmSynth FMsynth ks,kpa,kpb,kpc,kpd,kfma,kfmb,kfmc,kfmd,kalgo,kfb,giSine
outs afmSynth*kpE*kgainA, afmSynth*kpE*kgainA

endin
</CsInstruments>

<CsScore>
i1 0 z
</CsScore>
</CsoundSynthesizer>
