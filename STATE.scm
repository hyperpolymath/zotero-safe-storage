;; SPDX-License-Identifier: PMPL-1.0-or-later
;; Zotero Safe Storage - Project State

(state
  (metadata
    (version "0.1.0")
    (schema-version "1.0")
    (created "2026-01-02")
    (updated "2026-01-02")
    (project "zotero-safe-storage")
    (repo "https://github.com/hyperpolymath/zotero-safe-storage"))

  (project-context
    (name "Zotero Safe Storage")
    (tagline "Never lose your research library again")
    (tech-stack
      (container "nerdctl + containerd")
      (base-image "Wolfi (Chainguard)")
      (replication "LiteFS + Litestream")
      (filesystem "Btrfs CoW snapshots")
      (optional-sync "SurrealDB")
      (reproducibility "Guix + Nix")))

  (current-position
    (phase "Phase 0: Foundation")
    (overall-completion 5)
    (components
      (repository (status "complete") (completion 100))
      (documentation (status "in-progress") (completion 80))
      (architecture (status "in-progress") (completion 40))
      (container (status "not-started") (completion 0))
      (backup-layer (status "not-started") (completion 0))
      (sync-layer (status "not-started") (completion 0)))
    (working-features
      "README.adoc with full architecture overview"
      "ROADMAP.adoc with detailed milestones"
      "Project structure initialized"))

  (route-to-mvp
    (milestone "Phase 0 Complete"
      (items
        ("Finalize architecture decisions" pending)
        ("Community feedback on approach" pending)
        ("Technology benchmarks (LiteFS vs SurrealDB)" pending)))
    (milestone "Phase 1: Container"
      (items
        ("Wolfi base image with Zotero" pending)
        ("nerdctl rootless setup" pending)
        ("X11/Wayland forwarding" pending)
        ("Guix manifest" pending)))
    (milestone "Phase 2: Local Backup"
      (items
        ("Btrfs snapshot integration" pending)
        ("Integrity verification" pending)
        ("Restore CLI" pending)))
    (milestone "Phase 3: Cloud Backup"
      (items
        ("Litestream integration" pending)
        ("Encryption at rest" pending)
        ("Multi-destination backup" pending))))

  (blockers-and-issues
    (critical)
    (high)
    (medium
      ("Need to evaluate LiteFS vs SurrealDB for real Zotero workloads"))
    (low
      ("Mobile strategy undecided")))

  (critical-next-actions
    (immediate
      "Push initial repo to GitHub"
      "Create CONTRIBUTING.adoc")
    (this-week
      "Set up CI/CD pipeline"
      "Begin Wolfi container experiments")
    (this-month
      "Working prototype container"
      "Basic Litestream backup")))
