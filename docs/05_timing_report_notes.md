# Timing report notes

The retained final report is `report/6_finish.rpt`. Inspect its constraints and detailed path reports together; do not infer overall timing sign-off from a single summary field. The report captured for this run includes a 10 ns clock constraint and detailed max/min path checks, but the precise interpretation depends on the report sections and the applied constraints.

The run's report text records values including a reported minimum clock period of 3.20 ns, fmax 312.55 MHz, a detailed critical path slack of 6.8005 ns, and a hold path slack of 0.45 ns. These are report-specific outputs, not independent guarantees of silicon performance. The summary WNS field and detailed path slack fields should be presented as printed in the original report rather than silently reconciled. Confirm all input/output delays, unconstrained paths, corners, and library assumptions before claiming sign-off.
