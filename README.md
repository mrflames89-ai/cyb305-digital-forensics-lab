# Digital Forensics Lab Portfolio

This project demonstrates practical digital-forensics analysis across disk partitioning, FAT16 and NTFS file-system structures, file recovery, evidence integrity, and investigative reasoning.

The public website presents a guided case study using controlled, published Digital Forensics Tool Testing (DFTT) disk-image fixtures. It is not a report from a real investigation and does not contain real-world personal data.

## Portfolio Highlights

- Recovered and verified deleted file-system artifacts
- Analyzed MBR and extended boot record partition structures
- Followed FAT16 allocation chains and measured file slack
- Examined NTFS run lists, resident data, and alternate data streams
- Performed MD5 and SHA-256 integrity comparisons
- Distinguished observed evidence from analytical interpretation
- Documented one altered working copy and its restoration

## Live Website

Enable GitHub Pages from **Settings > Pages**, then select **Deploy from a branch**, branch `main`, and folder `/docs`.

## Repository Contents

| Path | Purpose |
|---|---|
| `docs/` | Public portfolio website |
| `CYB305_Week3_Group3_Submission/01_Report/` | Evidence report |
| `CYB305_Week3_Group3_Submission/02_Worksheets_filled/` | Completed worksheets |
| `CYB305_Week3_Group3_Submission/03_Screenshots/` | Submitted screenshots and index |
| `CYB305_Week3_Group3_Submission/04_Command_Output/` | Integrity and hash output |
| `FALLBACK_METADATA/` | Supplied tool-output metadata |
| `SOURCE_SHA256_MANIFEST.csv` | Published source-image hash manifest |
| `Verify_Evidence.ps1` | Evidence verification script |

## Evidence Integrity

The original disk images are intentionally excluded from this public repository because they are large public fixtures and do not need to be reproduced here. `SOURCE_SHA256_MANIFEST.csv` and `SOURCE_CATALOG.csv` document the sources and published hashes.

During the lab, an E02 working copy was changed once by an HxD save, quarantined, and restored from the tool backup. The restored image matched the published SHA-256 manifest. The relevant integrity documentation is included in `CYB305_Week3_Group3_Submission/04_Command_Output/`.

## Tools

- Autopsy
- HxD
- PowerShell
- FAT16 and NTFS analysis
- MD5 and SHA-256 verification

## Key Technical Finding

In the controlled fragmented-recovery exercise, a FAT16 export with the correct 1,584-byte size did not match the reference hash. The NTFS recovery did match because its MFT run list identified the actual non-adjacent extents. The result demonstrates why length and metadata must not be mistaken for proof of complete file content.

## Academic Integrity

The report and worksheets preserve the original evidence trail. This repository presents the work as a professional digital-forensics portfolio while retaining the underlying lab artifacts needed to understand the analysis.
