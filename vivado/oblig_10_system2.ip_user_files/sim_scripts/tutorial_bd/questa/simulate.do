onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib tutorial_bd_opt

do {wave.do}

view wave
view structure
view signals

do {tutorial_bd.udo}

run -all

quit -force
