```
expected:
  im1 --> builds w/out cache
  im2 --> build w/out caache
  im3 --> builds w/ cache from im1 as it's an exact copy
.
├── README.md
├── add
│   ├── im1
│   │   ├── Dockerfile # SAME
│   │   ├── file1.txt
│   │   ├── file2.txt
│   │   └── files.tar
│   ├── im2
│   │   ├── Dockerfile # SAME
│   │   ├── file1.txt
│   │   ├── file2.txt
│   │   └── files.tar   # slightly different content
│   └── im3
│       ├── Dockerfile # SAME
│       ├── file1.txt
│       ├── file2.txt
│       └── files.tar
└── copy
    ├── im1
    │   ├── Dockerfile
    │   ├── file1.txt
    │   ├── file2.txt
    │   └── files.tar
    ├── im2
    │   ├── Dockerfile
    │   ├── file1.txt
    │   ├── file2.txt
    │   └── files.tar
    └── im3
        ├── Dockerfile
        ├── file1.txt
        ├── file2.txt
        └── files.tar

8 directories, 25 files
```
