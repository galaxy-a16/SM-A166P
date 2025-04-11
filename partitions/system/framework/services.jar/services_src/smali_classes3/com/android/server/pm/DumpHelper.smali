.class public final Lcom/android/server/pm/DumpHelper;
.super Ljava/lang/Object;
.source "DumpHelper.java"


# instance fields
.field public final mAvailableFeatures:Landroid/util/ArrayMap;

.field public final mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public final mKnownPackages:Lcom/android/server/pm/KnownPackages;

.field public final mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mProtectedBroadcasts:Landroid/util/ArraySet;

.field public final mRequiredVerifierPackages:[Ljava/lang/String;

.field public final mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

.field public final mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;


# direct methods
.method public static synthetic $r8$lambda$xa8hSSgBhjegHHjHRwLJEgg4JO4(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseArray;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/DumpHelper;->lambda$doDump$0(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Lcom/android/server/pm/StorageEventHelper;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/PackageInstallerService;[Ljava/lang/String;Lcom/android/server/pm/KnownPackages;Lcom/android/server/pm/ChangedPackagesTracker;Landroid/util/ArrayMap;Landroid/util/ArraySet;[Landroid/os/incremental/PerUidReadTimeouts;Lcom/android/server/pm/SnapshotStatistics;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/pm/DumpHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 78
    iput-object p2, p0, Lcom/android/server/pm/DumpHelper;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 79
    iput-object p3, p0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 80
    iput-object p4, p0, Lcom/android/server/pm/DumpHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 81
    iput-object p5, p0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 82
    iput-object p6, p0, Lcom/android/server/pm/DumpHelper;->mKnownPackages:Lcom/android/server/pm/KnownPackages;

    .line 83
    iput-object p7, p0, Lcom/android/server/pm/DumpHelper;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 84
    iput-object p8, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 85
    iput-object p9, p0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 86
    iput-object p10, p0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 87
    iput-object p11, p0, Lcom/android/server/pm/DumpHelper;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    return-void
.end method

.method public static synthetic lambda$doDump$0(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseArray;)V
    .locals 9

    const-string v0, "  Sequence number="

    .line 480
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 482
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 484
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const-string v3, "  User "

    .line 485
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":"

    .line 487
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const-string v4, "    "

    if-nez v3, :cond_0

    .line 490
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "No packages changed"

    .line 491
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    move v5, v0

    :goto_1
    if-ge v5, v3, :cond_1

    .line 494
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 495
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 496
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "seq="

    .line 497
    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ", package="

    .line 499
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public doDump(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v1, p4

    .line 92
    new-instance v10, Lcom/android/server/pm/DumpState;

    invoke-direct {v10}, Lcom/android/server/pm/DumpState;-><init>()V

    const/4 v11, 0x0

    move v2, v11

    .line 96
    :goto_0
    array-length v3, v1

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v2, v3, :cond_8

    .line 97
    aget-object v3, v1, v2

    if-eqz v3, :cond_8

    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_8

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-eq v12, v13, :cond_0

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    const-string v12, "-a"

    .line 103
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_0

    :cond_1
    const-string v12, "-h"

    .line 105
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 106
    invoke-virtual {v0, v9}, Lcom/android/server/pm/DumpHelper;->printHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_2
    const-string v12, "--checkin"

    .line 108
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 109
    invoke-virtual {v10, v6}, Lcom/android/server/pm/DumpState;->setCheckIn(Z)V

    goto :goto_0

    :cond_3
    const-string v12, "--all-components"

    .line 110
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 111
    invoke-virtual {v10, v5}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto :goto_0

    :cond_4
    const-string v5, "-f"

    .line 112
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 113
    invoke-virtual {v10, v6}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto :goto_0

    :cond_5
    const-string v5, "--include-apex"

    .line 114
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 115
    invoke-virtual {v10, v4}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto :goto_0

    :cond_6
    const-string v4, "--proto"

    .line 116
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 117
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/DumpHelper;->dumpProto(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;)V

    return-void

    .line 120
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; use -h for help"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_8
    :goto_1
    array-length v3, v1

    const/high16 v12, 0x8000000

    const/high16 v14, 0x200000

    const/high16 v5, 0x100000

    const/high16 v4, 0x80000

    const/16 v15, 0x2000

    const v13, 0x8000

    if-ge v2, v3, :cond_45

    .line 126
    aget-object v3, v1, v2

    add-int/2addr v2, v6

    const-string v11, "android"

    .line 129
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_44

    const-string v11, "."

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto/16 :goto_19

    :cond_9
    const-string v11, "check-permission"

    .line 134
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 135
    array-length v3, v1

    if-lt v2, v3, :cond_a

    const-string v0, "Error: check-permission missing permission argument"

    .line 136
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 139
    :cond_a
    aget-object v3, v1, v2

    add-int/2addr v2, v6

    .line 141
    array-length v4, v1

    if-lt v2, v4, :cond_b

    const-string v0, "Error: check-permission missing package argument"

    .line 142
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 146
    :cond_b
    aget-object v4, v1, v2

    add-int/2addr v2, v6

    .line 148
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 149
    array-length v6, v1

    if-ge v2, v6, :cond_c

    .line 151
    :try_start_0
    aget-object v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 153
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: check-permission user argument is not a number: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_c
    :goto_2
    const-wide/16 v1, -0x1

    .line 160
    invoke-interface {v7, v4, v1, v2}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 163
    iget-object v0, v0, Lcom/android/server/pm/DumpHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, v3, v1, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void

    :cond_d
    const-string v11, "l"

    .line 165
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_43

    const-string v11, "libraries"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    goto/16 :goto_18

    :cond_e
    const-string v11, "f"

    .line 167
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_42

    const-string v11, "features"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    goto/16 :goto_17

    :cond_f
    const-string/jumbo v11, "r"

    .line 169
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_38

    const-string/jumbo v11, "resolvers"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    goto/16 :goto_10

    :cond_10
    const-string/jumbo v11, "perm"

    .line 193
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_37

    const-string/jumbo v11, "permissions"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    goto/16 :goto_f

    :cond_11
    const-string/jumbo v11, "permission"

    .line 195
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 196
    array-length v3, v1

    if-lt v2, v3, :cond_12

    const-string v0, "Error: permission requires permission name"

    .line 197
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 200
    :cond_12
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 201
    :goto_3
    array-length v11, v1

    if-ge v2, v11, :cond_13

    .line 202
    aget-object v11, v1, v2

    invoke-virtual {v3, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_13
    const/16 v1, 0x1c0

    .line 205
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    move-object v11, v3

    goto/16 :goto_1b

    :cond_14
    const-string/jumbo v11, "pref"

    .line 207
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_36

    const-string/jumbo v11, "preferred"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    goto/16 :goto_e

    :cond_15
    const-string/jumbo v11, "preferred-xml"

    .line 209
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 210
    invoke-virtual {v10, v15}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 211
    array-length v3, v1

    if-ge v2, v3, :cond_45

    const-string v3, "--full"

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 212
    invoke-virtual {v10, v6}, Lcom/android/server/pm/DumpState;->setFullPreferred(Z)V

    goto/16 :goto_1a

    :cond_16
    const-string v11, "d"

    .line 215
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_35

    const-string v11, "domain-preferred-apps"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    goto/16 :goto_d

    :cond_17
    const-string/jumbo v11, "p"

    .line 217
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_34

    const-string/jumbo v11, "packages"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    goto/16 :goto_c

    :cond_18
    const-string/jumbo v11, "q"

    .line 219
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_33

    const-string/jumbo v11, "queries"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    goto/16 :goto_b

    :cond_19
    const-string/jumbo v11, "s"

    .line 221
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_32

    const-string/jumbo v11, "shared-users"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    goto/16 :goto_a

    :cond_1a
    const-string/jumbo v11, "prov"

    .line 226
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_31

    const-string/jumbo v11, "providers"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    goto/16 :goto_9

    :cond_1b
    const-string v11, "m"

    .line 228
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_30

    const-string/jumbo v11, "messages"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    goto/16 :goto_8

    :cond_1c
    const-string/jumbo v11, "v"

    .line 230
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2f

    const-string/jumbo v11, "verifiers"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    goto/16 :goto_7

    :cond_1d
    const-string v11, "dv"

    .line 232
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2e

    const-string v11, "domain-verifier"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    goto/16 :goto_6

    :cond_1e
    const-string/jumbo v11, "version"

    .line 234
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 235
    invoke-virtual {v10, v13}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_1f
    const-string v11, "k"

    .line 236
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2d

    const-string v11, "keysets"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    goto/16 :goto_5

    :cond_20
    const-string v11, "installs"

    .line 238
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21

    const/high16 v1, 0x10000

    .line 239
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_21
    const-string v11, "frozen"

    .line 240
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22

    .line 241
    invoke-virtual {v10, v4}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_22
    const-string/jumbo v11, "volumes"

    .line 242
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23

    const/high16 v1, 0x800000

    .line 243
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_23
    const-string v11, "dexopt"

    .line 244
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 245
    invoke-virtual {v10, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_24
    const-string v11, "compiler-stats"

    .line 246
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25

    .line 247
    invoke-virtual {v10, v14}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_25
    const-string v11, "changes"

    .line 248
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_26

    const/high16 v1, 0x400000

    .line 249
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_26
    const-string/jumbo v11, "service-permissions"

    .line 250
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_27

    const/high16 v1, 0x1000000

    .line 251
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_27
    const-string v11, "known-packages"

    .line 252
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_28

    .line 253
    invoke-virtual {v10, v12}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_28
    const-string/jumbo v11, "t"

    .line 254
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2c

    const-string/jumbo v11, "timeouts"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_29

    goto :goto_4

    :cond_29
    const-string/jumbo v11, "snapshot"

    .line 256
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b

    const/high16 v3, 0x20000000

    .line 257
    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 258
    array-length v3, v1

    if-ge v2, v3, :cond_45

    const-string v3, "--full"

    .line 259
    aget-object v11, v1, v2

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x0

    .line 260
    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setBrief(Z)V

    goto/16 :goto_1a

    :cond_2a
    const-string v3, "--brief"

    .line 262
    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 263
    invoke-virtual {v10, v6}, Lcom/android/server/pm/DumpState;->setBrief(Z)V

    goto/16 :goto_1a

    :cond_2b
    const-string/jumbo v1, "protected-broadcasts"

    .line 267
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    const/high16 v1, 0x40000000    # 2.0f

    .line 268
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_2c
    :goto_4
    const/high16 v1, 0x10000000

    .line 255
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_2d
    :goto_5
    const/16 v1, 0x4000

    .line 237
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_2e
    :goto_6
    const/high16 v1, 0x20000

    .line 233
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_2f
    :goto_7
    const/16 v1, 0x800

    .line 231
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_30
    :goto_8
    const/16 v1, 0x200

    .line 229
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_31
    :goto_9
    const/16 v1, 0x400

    .line 227
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_32
    :goto_a
    const/16 v3, 0x100

    .line 222
    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 223
    array-length v3, v1

    if-ge v2, v3, :cond_45

    const-string/jumbo v3, "noperm"

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 v1, 0x4

    .line 224
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto/16 :goto_1a

    :cond_33
    :goto_b
    const/high16 v1, 0x4000000

    .line 220
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_34
    :goto_c
    const/16 v1, 0x80

    .line 218
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_35
    :goto_d
    const/high16 v1, 0x40000

    .line 216
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_36
    :goto_e
    const/16 v1, 0x1000

    .line 208
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_37
    :goto_f
    const/16 v1, 0x40

    .line 194
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    .line 170
    :cond_38
    :goto_10
    array-length v3, v1

    if-lt v2, v3, :cond_39

    const/16 v1, 0x3c

    .line 171
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    .line 176
    :cond_39
    :goto_11
    array-length v3, v1

    if-ge v2, v3, :cond_45

    .line 177
    aget-object v3, v1, v2

    const-string v11, "a"

    .line 178
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_41

    const-string v11, "activity"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3a

    goto :goto_15

    :cond_3a
    const-string/jumbo v11, "s"

    .line 180
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_40

    const-string/jumbo v11, "service"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3b

    goto :goto_14

    :cond_3b
    const-string/jumbo v11, "r"

    .line 182
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3f

    const-string/jumbo v11, "receiver"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3c

    goto :goto_13

    :cond_3c
    const-string v11, "c"

    .line 184
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3e

    const-string v11, "content"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3d

    goto :goto_12

    .line 187
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown resolver table type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3e
    :goto_12
    const/16 v3, 0x20

    .line 185
    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_16

    :cond_3f
    :goto_13
    const/16 v3, 0x10

    .line 183
    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_16

    :cond_40
    :goto_14
    const/16 v3, 0x8

    .line 181
    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_16

    :cond_41
    :goto_15
    const/4 v3, 0x4

    .line 179
    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_42
    :goto_17
    const/4 v1, 0x2

    .line 168
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_1a

    .line 166
    :cond_43
    :goto_18
    invoke-virtual {v10, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_1a

    .line 130
    :cond_44
    :goto_19
    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setTargetPackageName(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v10, v6}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    :cond_45
    :goto_1a
    const/4 v11, 0x0

    .line 272
    :goto_1b
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->getTargetPackageName()Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->isCheckIn()Z

    move-result v17

    if-eqz v3, :cond_46

    .line 277
    invoke-interface {v7, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-nez v1, :cond_46

    .line 278
    invoke-interface {v7, v3}, Lcom/android/server/pm/Computer;->isApexPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_46
    if-eqz v17, :cond_47

    const-string/jumbo v1, "vers,1"

    .line 284
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_47
    if-nez v17, :cond_48

    .line 289
    invoke-virtual {v10, v13}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_48

    if-nez v3, :cond_48

    .line 291
    invoke-interface {v7, v13, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_48
    const-string v13, "  "

    if-nez v17, :cond_4d

    .line 295
    invoke-virtual {v10, v12}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-nez v3, :cond_4d

    .line 297
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 298
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 300
    :cond_49
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 v2, 0x78

    invoke-direct {v1, v9, v13, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    const-string v2, "Known Packages:"

    .line 301
    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v2, 0x0

    :goto_1c
    const/16 v12, 0x13

    if-gt v2, v12, :cond_4c

    .line 304
    invoke-static {v2}, Lcom/android/server/pm/KnownPackages;->knownPackageToString(I)Ljava/lang/String;

    move-result-object v12

    .line 305
    invoke-virtual {v1, v12}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v12, ":"

    .line 306
    invoke-virtual {v1, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 307
    iget-object v12, v0, Lcom/android/server/pm/DumpHelper;->mKnownPackages:Lcom/android/server/pm/KnownPackages;

    const/4 v4, 0x0

    invoke-virtual {v12, v7, v2, v4}, Lcom/android/server/pm/KnownPackages;->getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object v12

    .line 309
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 310
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    const-string/jumbo v4, "none"

    .line 311
    invoke-virtual {v1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e

    .line 313
    :cond_4a
    array-length v4, v12

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v4, :cond_4b

    aget-object v14, v12, v5

    .line 314
    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    const/high16 v14, 0x200000

    goto :goto_1d

    .line 317
    :cond_4b
    :goto_1e
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    const/high16 v4, 0x80000

    const/high16 v5, 0x100000

    const/high16 v14, 0x200000

    goto :goto_1c

    .line 319
    :cond_4c
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_4d
    const/16 v1, 0x800

    .line 322
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    const-string v12, ")"

    const-string v2, ","

    if-eqz v1, :cond_51

    if-nez v3, :cond_51

    if-nez v17, :cond_4f

    .line 323
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4f

    .line 324
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 325
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_4e
    const-string v1, "Verifiers:"

    .line 327
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    :cond_4f
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v14, v1

    const/4 v15, 0x0

    :goto_1f
    if-ge v15, v14, :cond_51

    aget-object v6, v1, v15

    if-nez v17, :cond_50

    const-string v4, "  Required: "

    .line 331
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " (uid="

    .line 333
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 p4, v1

    const/4 v1, 0x0

    const-wide/32 v4, 0x10000000

    .line 334
    invoke-interface {v7, v6, v4, v5, v1}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 336
    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_20

    :cond_50
    move-object/from16 p4, v1

    const-wide/32 v4, 0x10000000

    const-string/jumbo v1, "vrfy,"

    .line 338
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 341
    invoke-interface {v7, v6, v4, v5, v1}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(I)V

    :goto_20
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p4

    const/4 v6, 0x1

    goto :goto_1f

    :cond_51
    const/high16 v1, 0x20000

    .line 347
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_55

    if-nez v3, :cond_55

    .line 349
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object v1

    .line 350
    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 352
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v17, :cond_53

    .line 354
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 355
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_52
    const-string v4, "Domain Verifier:"

    .line 357
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  Using: "

    .line 358
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " (uid="

    .line 360
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/32 v4, 0x10000000

    const/4 v14, 0x0

    .line 361
    invoke-interface {v7, v1, v4, v5, v14}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 363
    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_21

    :cond_53
    const-wide/32 v4, 0x10000000

    const/4 v14, 0x0

    if-eqz v1, :cond_56

    const-string v6, "dv,"

    .line 365
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 368
    invoke-interface {v7, v1, v4, v5, v14}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_21

    :cond_54
    const/4 v14, 0x0

    .line 372
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    const-string v1, "No Domain Verifier available!"

    .line 373
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_21

    :cond_55
    const/4 v14, 0x0

    :cond_56
    :goto_21
    const/4 v1, 0x1

    .line 377
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_57

    if-nez v3, :cond_57

    .line 379
    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_57
    const/4 v1, 0x2

    .line 382
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    if-nez v3, :cond_5c

    .line 384
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 385
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_58
    if-nez v17, :cond_59

    const-string v1, "Features:"

    .line 388
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    :cond_59
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/FeatureInfo;

    if-nez v17, :cond_5b

    .line 393
    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    iget-object v5, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    iget v5, v4, Landroid/content/pm/FeatureInfo;->version:I

    if-lez v5, :cond_5a

    const-string v5, " version="

    .line 396
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    iget v4, v4, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 399
    :cond_5a
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    goto :goto_22

    :cond_5b
    const-string v5, "feat,"

    .line 401
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    iget-object v5, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget v4, v4, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_22

    .line 409
    :cond_5c
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v15

    if-nez v17, :cond_5d

    const/4 v1, 0x4

    .line 411
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 412
    invoke-interface {v15, v9, v10, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpActivityResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_5d
    if-nez v17, :cond_5e

    const/16 v1, 0x10

    .line 415
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 416
    invoke-interface {v15, v9, v10, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpReceiverResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_5e
    if-nez v17, :cond_5f

    const/16 v1, 0x8

    .line 419
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 420
    invoke-interface {v15, v9, v10, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpServiceResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_5f
    if-nez v17, :cond_60

    const/16 v1, 0x20

    .line 423
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 424
    invoke-interface {v15, v9, v10, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpProviderResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_60
    if-nez v17, :cond_61

    const/16 v1, 0x1000

    .line 428
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 429
    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_61
    if-nez v17, :cond_62

    const/16 v1, 0x2000

    .line 433
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_62

    if-nez v3, :cond_62

    .line 434
    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_62
    if-nez v17, :cond_63

    const/high16 v1, 0x40000

    .line 438
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 439
    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_63
    if-nez v17, :cond_64

    const/16 v1, 0x40

    .line 443
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 444
    invoke-interface {v7, v9, v3, v11, v10}, Lcom/android/server/pm/Computer;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V

    :cond_64
    if-nez v17, :cond_65

    const/16 v1, 0x400

    .line 448
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 449
    invoke-interface {v15, v7, v9, v10, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpContentProviders(Lcom/android/server/pm/Computer;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_65
    if-nez v17, :cond_66

    const/16 v1, 0x4000

    .line 454
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 455
    invoke-interface {v7, v9, v3, v10}, Lcom/android/server/pm/Computer;->dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V

    :cond_66
    const/16 v1, 0x80

    .line 458
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_67

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v16, v3

    const/high16 v6, 0x80000

    move-object v4, v11

    const/high16 v14, 0x100000

    move-object v5, v10

    move v14, v6

    move/from16 v6, v17

    .line 459
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    goto :goto_23

    :cond_67
    move-object/from16 v16, v3

    const/high16 v14, 0x80000

    :goto_23
    if-nez v17, :cond_68

    const/high16 v1, 0x4000000

    .line 463
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 464
    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_68
    const/16 v1, 0x100

    .line 467
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_69

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v16

    move-object v4, v11

    move-object v5, v10

    move/from16 v6, v17

    .line 468
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    :cond_69
    if-nez v17, :cond_6b

    const/high16 v1, 0x400000

    .line 473
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    if-nez v16, :cond_6b

    .line 475
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 476
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_6a
    const-string v1, "Package Changes:"

    .line 478
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    new-instance v2, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v9}, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ChangedPackagesTracker;->iterateAll(Ljava/util/function/BiConsumer;)V

    :cond_6b
    if-nez v17, :cond_6c

    .line 508
    invoke-virtual {v10, v14}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_6c

    if-nez v16, :cond_6c

    .line 510
    invoke-interface {v7, v14, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_6c
    if-nez v17, :cond_6d

    const/high16 v1, 0x800000

    .line 514
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_6d

    if-nez v16, :cond_6d

    .line 516
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    invoke-virtual {v1, v9, v10}, Lcom/android/server/pm/StorageEventHelper;->dumpLoadedVolumes(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_6d
    if-nez v17, :cond_6e

    const/high16 v1, 0x1000000

    .line 520
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_6e

    if-nez v16, :cond_6e

    .line 522
    invoke-interface {v15, v9, v10}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpServicePermissions(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_6e
    if-nez v17, :cond_6f

    const/high16 v1, 0x100000

    .line 526
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 527
    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_6f
    if-nez v17, :cond_70

    const/high16 v1, 0x200000

    .line 531
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 532
    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_70
    const/16 v1, 0x200

    .line 535
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_73

    if-nez v16, :cond_73

    if-nez v17, :cond_72

    .line 538
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 539
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 541
    :cond_71
    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 542
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Package warning messages:"

    .line 543
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 544
    invoke-static {v9, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_24

    :cond_72
    const-string/jumbo v1, "msg,"

    .line 546
    invoke-static {v9, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_73
    :goto_24
    if-nez v17, :cond_75

    const/high16 v1, 0x10000

    .line 552
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_75

    if-nez v16, :cond_75

    .line 556
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 557
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 559
    :cond_74
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 v3, 0x78

    invoke-direct {v2, v9, v13, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageInstallerService;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    :cond_75
    if-nez v17, :cond_76

    const/high16 v1, 0x2000000

    .line 562
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_76

    const/high16 v1, 0x2000000

    .line 563
    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_76
    if-nez v17, :cond_78

    const/high16 v1, 0x10000000

    .line 567
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_78

    if-nez v16, :cond_78

    .line 569
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 570
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_77
    const-string v1, "Per UID read timeouts:"

    .line 572
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Default timeouts flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getDefaultTimeouts()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Known digesters list flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getKnownDigestersList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Timeouts ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_78

    aget-object v4, v1, v3

    const-string v5, "        ("

    .line 579
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 580
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/os/incremental/PerUidReadTimeouts;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 581
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "minTimeUs="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v4, Landroid/os/incremental/PerUidReadTimeouts;->minTimeUs:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "minPendingTimeUs="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v4, Landroid/os/incremental/PerUidReadTimeouts;->minPendingTimeUs:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 583
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "maxPendingTimeUs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v4, Landroid/os/incremental/PerUidReadTimeouts;->maxPendingTimeUs:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_78
    if-nez v17, :cond_7a

    const/high16 v1, 0x20000000

    .line 589
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_7a

    if-nez v16, :cond_7a

    .line 591
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 592
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_79
    const-string v1, "Snapshot statistics:"

    .line 594
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    const-string v3, "   "

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    .line 596
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getUsed()I

    move-result v6

    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->isBrief()Z

    move-result v7

    move-object/from16 v2, p3

    .line 595
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JIZ)V

    :cond_7a
    if-nez v17, :cond_7c

    const/high16 v1, 0x40000000    # 2.0f

    .line 600
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_7c

    if-nez v16, :cond_7c

    .line 602
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 603
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_7b
    const-string v1, "Protected broadcast actions:"

    .line 605
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 606
    :goto_26
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v11, v1, :cond_7c

    .line 607
    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 608
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v1, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_26

    :cond_7c
    return-void
.end method

.method public final dumpAvailableFeaturesProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5

    .line 696
    iget-object v0, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 698
    iget-object v2, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/FeatureInfo;

    const-wide v3, 0x20b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/FeatureInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dumpProto(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;)V
    .locals 13

    .line 654
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 656
    iget-object p2, p0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-wide/32 v4, 0x10000000

    const-wide v6, 0x10500000002L

    const-wide v8, 0x10900000001L

    if-ge v3, v1, :cond_0

    aget-object v10, p2, v3

    const-wide v11, 0x10b00000001L

    .line 658
    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 659
    invoke-virtual {v0, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 663
    invoke-interface {p1, v10, v4, v5, v2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    .line 661
    invoke-virtual {v0, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 667
    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 670
    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object p2

    .line 671
    invoke-interface {p2}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 673
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-wide v10, 0x10b00000002L

    .line 675
    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 676
    invoke-virtual {v0, v8, v9, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 679
    invoke-interface {p1, p2, v4, v5, v2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p2

    .line 677
    invoke-virtual {v0, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 683
    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 686
    :cond_1
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->dumpSharedLibrariesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 687
    invoke-virtual {p0, v0}, Lcom/android/server/pm/DumpHelper;->dumpAvailableFeaturesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 688
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 689
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 690
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Landroid/util/proto/ProtoOutputStream;)V

    .line 691
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public final printHelp(Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "Package manager dump options:"

    .line 615
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  [-h] [-f] [--checkin] [--all-components] [cmd] ..."

    .line 616
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    --checkin: dump for a checkin"

    .line 617
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    -f: print details of intent filters"

    .line 618
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    -h: print this help"

    .line 619
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    --all-components: include all component names in package dump"

    .line 620
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  cmd may be one of:"

    .line 621
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    apex: list active APEXes and APEX session state"

    .line 622
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    l[ibraries]: list known shared libraries"

    .line 623
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    f[eatures]: list device features"

    .line 624
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    k[eysets]: print known keysets"

    .line 625
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    r[esolvers] [activity|service|receiver|content]: dump intent resolvers"

    .line 626
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    perm[issions]: dump permissions"

    .line 627
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    permission [name ...]: dump declaration and use of given permission"

    .line 628
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    pref[erred]: print preferred package settings"

    .line 629
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    preferred-xml [--full]: print preferred package settings as xml"

    .line 630
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    prov[iders]: dump content providers"

    .line 631
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    p[ackages]: dump installed packages"

    .line 632
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    q[ueries]: dump app queryability calculations"

    .line 633
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    s[hared-users]: dump shared user IDs"

    .line 634
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    m[essages]: print collected runtime messages"

    .line 635
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    v[erifiers]: print package verifier info"

    .line 636
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    d[omain-preferred-apps]: print domains preferred apps"

    .line 637
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    i[ntent-filter-verifiers]|ifv: print intent filter verifier info"

    .line 638
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    t[imeouts]: print read timeouts for known digesters"

    .line 639
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    version: print database version info"

    .line 640
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    write: write current settings now"

    .line 641
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    installs: details about install sessions"

    .line 642
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    check-permission <permission> <package> [<user>]: does pkg hold perm?"

    .line 643
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    dexopt: dump dexopt state"

    .line 644
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    compiler-stats: dump compiler statistics"

    .line 645
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    service-permissions: dump permissions required by services"

    .line 646
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    snapshot: dump snapshot statistics"

    .line 647
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    protected-broadcasts: print list of protected broadcast actions"

    .line 648
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    known-packages: dump known packages"

    .line 649
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    <package.name>: info about given package"

    .line 650
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
