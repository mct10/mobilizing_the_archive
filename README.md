# Mobilizing the Archive

> [**Mobilizing the Archive: Bitext Extraction at Scale from Archival Documents for Extremely Low-resource Languages**](https://arxiv.org/abs/2610.40233)

## Overview
We explore the potential of archival linguistic resources as a source of parallel text for extremely low-resource languages. 
These resources offer parallel data for languages under-represented online and could potentially scale to thousands more languages. 
Our approach leverages an Optical Character Recognition (OCR) model as well as a vision language model (VLM) to extract translation pairs from [The DReaM Corpus](https://aclanthology.org/2020.lrec-1.110/), relying on the visual layout information of documents.

This repository provides:
- Extracted bitext for 20 languages, with no overlaps with the dev/test sets used in our paper
- Code for extraction and machine translation (coming soon...)

## Extracted Bitexts

They are in `./data`, with one password-protected zip file per language pair.
Use `unzip_data.sh` to extract data; it reads the password from the `PASSWORD` environment variable.
The password is `drowssap`.

Each extracted file is a JSONL file with one translation pair per line, e.g. `{"arp": "...", "eng": "..."}`.


**Statistics:**

| Pair      |      Lines |   HRL words |   LRL words |
|-----------|-----------:|------------:|------------:|
| arp-eng   |      1,796 |      11,488 |       4,044 |
| chv-eng   |        454 |       2,820 |       1,663 |
| ddo-eng   |      1,403 |      10,303 |       7,039 |
| dgo-eng   |        137 |         988 |       1,028 |
| dik-eng   |      3,238 |      22,950 |      18,046 |
| git-eng   |      1,018 |       5,341 |       3,931 |
| gug-eng   |        910 |       7,400 |       4,385 |
| ilo-eng   |     14,263 |      84,458 |      61,924 |
| kac-eng   |        817 |       6,884 |       7,603 |
| kea-eng   |      1,483 |      11,099 |      10,266 |
| kgv-eng   |      1,545 |      11,371 |      10,099 |
| kmb-por   |     13,067 |     131,866 |      89,074 |
| lez-eng   |      1,533 |      14,081 |      11,964 |
| lus-eng   |      2,477 |      13,707 |      12,589 |
| mgm-eng   |      1,253 |       8,293 |       7,543 |
| min-eng   |        459 |       3,210 |       2,664 |
| mnc-eng   |        953 |       7,184 |       4,919 |
| ntu-eng   |      1,118 |      18,469 |      13,093 |
| spa-usp   |      1,007 |       6,187 |       5,250 |
| wol-eng   |      2,632 |      13,904 |      10,897 |
| **Total** | **51,563** | **392,003** | **288,021** |


## Citation
```
@misc{meng2026mobilizingarchivebitextextraction,
      title={Mobilizing the Archive: Bitext Extraction at Scale from Archival Documents for Extremely Low-resource Languages}, 
      author={Chutong Meng and Alec J. Bateman and Antonios Anastasopoulos},
      year={2026},
      eprint={2610.40233},
      archivePrefix={arXiv},
      primaryClass={cs.CL},
      url={https://arxiv.org/abs/2610.40233}, 
}
```
