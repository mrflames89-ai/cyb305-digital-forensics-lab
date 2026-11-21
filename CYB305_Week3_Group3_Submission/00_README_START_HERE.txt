CYB 305 WEEK 3 - GROUP 3 SUBMISSION PACKAGE
============================================

WHAT IS IN HERE
01_Report\                 Evidence report (Word, 18 pages, 25 embedded screenshots)
02_Worksheets_filled\      Disk_Map.csv, Recovery_Record.csv, Group_Findings.csv (Group 3 row)
03_Screenshots\            Your screenshots sorted by activity, with Screenshot_Index.csv (caption + USE/SUPPORT/SPARE)
   _SPARE_not_for_submission\   18 screenshots that should NOT be submitted (see the index for why)
04_Command_Output\         Your PowerShell hash output as text, plus the E02 integrity incident log
05_Put_Your_Exports_Here\  Empty on purpose: copy your E02, E03, E04 export folders in (see its README)

BEFORE YOU SUBMIT (things only you can fill in)
1. Report page 1: your name(s), student ID, Autopsy version (Autopsy > Help > About), HxD version.
2. Copy your exported files into 05_Put_Your_Exports_Here (E02, E03, E04 folders).
3. Open the report and read it through. Change anything you cannot explain in your own words.
4. The individual exit task is NOT included. It is assessed separately and must be your own work.
5. Check your course's policy on AI assistance. This package was drafted with help from Claude (Anthropic),
   using your screenshots and command output; declare that if your instructor requires it.

KNOWN GAPS (stated honestly in the report)
- Autopsy/HxD versions were not recorded during the lab.
- E01 volume 2, 3 and 5 boot sectors were not screenshotted (values derived from the tables).
- Screenshot A3_08 ("Can't find 1fragment1") does not show which file was open; by search order it was file2.dat.
- E02 working copy was altered once (HxD save), quarantined and restored from HxD's .bak; the final hash matches
  the manifest. See 04_Command_Output\04_integrity_incident_log.txt and the report, section 1.
- The .dd images, the Autopsy case folder and the quarantined files are not included (large / not needed).

KEY RESULTS (for a quick check)
- All four images match the manifest after restoring E02 (B173FD82... for fat-img-kw.dd).
- E03 _rag1.dat: 1584 bytes, MD5 c4f3b9a0f17d464f4fc61b94ecf6cc21  -> does NOT match reference 7a3bc5b763bef201202108f4ba128149
- E04 frag1.dat: 1584 bytes, MD5 7a3bc5b763bef201202108f4ba128149  -> matches
- Group 3 verdict: right length does not mean complete; E03 not supported, E04 supported.
