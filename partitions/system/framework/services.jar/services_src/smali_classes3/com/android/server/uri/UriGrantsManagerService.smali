.class public Lcom/android/server/uri/UriGrantsManagerService;
.super Landroid/app/IUriGrantsManager$Stub;
.source "UriGrantsManagerService.java"

# interfaces
.implements Lcom/android/server/uri/UriMetricsHelper$PersistentUriGrantsProvider;


# instance fields
.field public mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mGrantFile:Landroid/util/AtomicFile;

.field public final mGrantedUriPermissions:Landroid/util/SparseArray;

.field public final mH:Lcom/android/server/uri/UriGrantsManagerService$H;

.field public final mLock:Ljava/lang/Object;

.field public mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

.field public mPmInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckAuthorityGrantsLocked(Lcom/android/server/uri/UriGrantsManagerService;ILandroid/content/pm/ProviderInfo;IZ)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->checkAuthorityGrantsLocked(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckGrantUriPermissionFromIntentUnlocked(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckGrantUriPermissionUnlocked(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/net/Uri;II)I
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckUriPermissionLocked(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/GrantUri;II)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menforceNotIsolatedCaller(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgrantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreadGrantedUriPermissionsLocked(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->readGrantedUriPermissionsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveUriPermissionIfNeededLocked(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriPermission;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveUriPermissionsForPackageLocked(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;IZZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrevokeUriPermission(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstart(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->start()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->writeGrantedUriPermissions()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/uri/UriGrantsManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 159
    invoke-direct {p0}, Landroid/app/IUriGrantsManager$Stub;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 151
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 160
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    .line 161
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "urigrants.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p1, "uri-grants"

    invoke-direct {v0, v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    return-void
.end method

.method public static createForTest(Ljava/io/File;)Lcom/android/server/uri/UriGrantsManagerService;
    .locals 1

    .line 166
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;)V

    .line 167
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    iput-object p0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 168
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    iput-object p0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method


# virtual methods
.method public final checkAuthorityGrantsLocked(ILandroid/content/pm/ProviderInfo;IZ)Z
    .locals 4

    .line 531
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    if-eqz p1, :cond_2

    .line 533
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 534
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/GrantUri;

    .line 535
    iget v3, v2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v3, p3, :cond_0

    if-nez p4, :cond_1

    .line 536
    :cond_0
    iget-object v2, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v2, p2}, Lcom/android/server/uri/UriGrantsManagerService;->matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;
    .locals 16

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v6, p5

    if-eqz v7, :cond_c

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 611
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 612
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v9

    if-nez v1, :cond_1

    if-nez v9, :cond_1

    return-object v0

    .line 617
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getContentUserHint()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    .line 619
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    :cond_2
    move v10, v2

    if-eqz v6, :cond_3

    .line 623
    iget v0, v6, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    move-object/from16 v11, p0

    move/from16 v12, p6

    move v5, v0

    goto :goto_0

    :cond_3
    move-object/from16 v11, p0

    .line 625
    iget-object v2, v11, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v3, 0x10000000

    move/from16 v12, p6

    invoke-virtual {v2, v7, v3, v4, v12}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-gez v2, :cond_4

    return-object v0

    :cond_4
    move v5, v2

    :goto_0
    if-eqz v1, :cond_6

    .line 634
    invoke-static {v10, v1, v8}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    move/from16 v4, p4

    .line 635
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v5

    if-lez v5, :cond_6

    if-nez v6, :cond_5

    .line 639
    new-instance v0, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v0, v7, v5, v8}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    goto :goto_1

    :cond_5
    move-object v0, v6

    .line 641
    :goto_1
    iget-object v1, v0, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v1, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object v6, v0

    :cond_6
    if-eqz v9, :cond_b

    const/4 v0, 0x0

    move v13, v0

    move v14, v5

    move-object v15, v6

    .line 645
    :goto_2
    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-ge v13, v0, :cond_a

    .line 646
    invoke-virtual {v9, v13}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 648
    invoke-static {v10, v0, v8}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v6

    move/from16 v4, p4

    move v5, v14

    .line 649
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v14

    if-lez v14, :cond_9

    if-nez v15, :cond_7

    .line 653
    new-instance v15, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v15, v7, v14, v8}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    .line 655
    :cond_7
    iget-object v0, v15, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 658
    :cond_8
    invoke-virtual {v9, v13}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object v5, v15

    move/from16 v6, p6

    .line 660
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object v15, v0

    :cond_9
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_a
    move-object v6, v15

    :cond_b
    return-object v6

    .line 605
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "targetPkg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I
    .locals 6

    .line 1302
    new-instance v3, Lcom/android/server/uri/GrantUri;

    invoke-direct {v3, p5, p3, p4}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result p0

    return p0
.end method

.method public final checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    .line 1092
    invoke-static/range {p4 .. p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v1

    const/4 v11, -0x1

    if-nez v1, :cond_0

    return v11

    :cond_0
    const-string v1, "content"

    .line 1101
    iget-object v2, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v11

    .line 1108
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 1110
    iget-object v2, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    const/16 v2, 0x3e8

    const/4 v13, 0x0

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_5

    :cond_2
    const-string v1, "com.android.settings.files"

    .line 1113
    iget-object v2, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "com.android.settings.module_licenses"

    iget-object v2, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1114
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 1122
    :cond_3
    iget-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v3, 0x80

    .line 1123
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v2, v12

    move/from16 v6, p1

    .line 1122
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1124
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    const-string v2, "com.samsung.android.exempt.GRANT_URI_PERMISSION"

    .line 1125
    invoke-virtual {v1, v2, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "UriGrantsManagerService"

    .line 1127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested grant to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v0, "UriGrantsManagerService"

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For security reasons, the system cannot issue a Uri permission grant to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; use startActivityAsCaller() instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    .line 1148
    :cond_5
    :goto_0
    iget v1, v9, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v12, v1, v2, v7}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v12

    if-nez v12, :cond_6

    const-string v0, "UriGrantsManagerService"

    .line 1151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No content provider found for permission check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1152
    invoke-virtual {v2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1151
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_6
    if-gez p5, :cond_8

    if-eqz v8, :cond_8

    .line 1158
    iget-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v2, 0x10000000

    .line 1159
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1158
    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-gez v1, :cond_7

    return v11

    :cond_7
    move v8, v1

    goto :goto_1

    :cond_8
    move/from16 v8, p5

    :goto_1
    const/4 v14, 0x1

    if-ltz v8, :cond_9

    .line 1169
    invoke-virtual {v0, v12, v9, v8, v10}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_2
    move v1, v14

    goto :goto_5

    .line 1177
    :cond_9
    iget-boolean v1, v12, Landroid/content/pm/ProviderInfo;->exported:Z

    and-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_a

    .line 1179
    iget-object v3, v12, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v3, :cond_a

    move v1, v13

    :cond_a
    and-int/lit8 v3, v10, 0x2

    if-eqz v3, :cond_b

    .line 1184
    iget-object v4, v12, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v4, :cond_b

    move v1, v13

    .line 1188
    :cond_b
    iget-object v4, v12, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v4, :cond_e

    .line 1189
    array-length v4, v4

    move v5, v13

    :goto_3
    if-ge v5, v4, :cond_e

    .line 1191
    iget-object v6, v12, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v6, v6, v5

    if-eqz v6, :cond_d

    iget-object v15, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1192
    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    if-eqz v2, :cond_c

    .line 1194
    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    move v1, v13

    :cond_c
    if-eqz v3, :cond_e

    .line 1199
    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    move v1, v13

    goto :goto_4

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_e
    :goto_4
    if-eqz v1, :cond_f

    goto :goto_2

    :cond_f
    move v1, v13

    .line 1212
    :goto_5
    iget-boolean v2, v12, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v2, :cond_10

    move v1, v13

    :cond_10
    and-int/lit16 v2, v10, 0xc0

    if-nez v2, :cond_11

    move v15, v14

    goto :goto_6

    :cond_11
    move v15, v13

    :goto_6
    if-eqz v15, :cond_12

    if-eqz v1, :cond_12

    .line 1226
    iget-object v0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1227
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    .line 1228
    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    iget-object v4, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    move-object/from16 p0, v0

    move/from16 p1, v1

    move-object/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    .line 1226
    invoke-virtual/range {p0 .. p5}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    return v11

    :cond_12
    if-ltz v8, :cond_13

    .line 1239
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget v2, v9, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v1, v2, :cond_13

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p3

    move/from16 v4, p1

    move/from16 v5, p4

    .line 1240
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v14

    goto :goto_7

    :cond_13
    move v1, v13

    .line 1244
    :goto_7
    iget-boolean v2, v12, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 1245
    iget-object v3, v12, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1246
    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v2, v2

    move v3, v13

    :goto_8
    if-ge v3, v2, :cond_16

    .line 1249
    iget-object v4, v12, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v4, v4, v3

    if-eqz v4, :cond_14

    iget-object v5, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1250
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    move v13, v14

    goto :goto_9

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_15
    move v13, v2

    :cond_16
    :goto_9
    if-nez v13, :cond_19

    if-eqz v1, :cond_18

    if-eqz v15, :cond_17

    goto :goto_a

    .line 1261
    :cond_17
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not allow granting of advanced Uri permissions (uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1267
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not allow granting of Uri permissions (uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1275
    :cond_19
    :goto_a
    invoke-virtual {v0, v12, v9, v7, v10}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1278
    iget-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1279
    :try_start_0
    invoke-virtual {v0, v9, v7, v10}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    .line 1280
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1b

    const-string v0, "android.permission.MANAGE_DOCUMENTS"

    .line 1282
    iget-object v1, v12, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1283
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not have permission to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; you could obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1288
    :cond_1a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not have permission to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 1280
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1b
    return v8
.end method

.method public final checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 938
    iget-object v5, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 942
    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x1

    if-ne v5, v3, :cond_0

    return v6

    .line 944
    :cond_0
    iget-boolean v5, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    const/4 v7, 0x0

    if-nez v5, :cond_1

    return v7

    :cond_1
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    :goto_0
    and-int/lit8 v8, v4, 0x2

    if-nez v8, :cond_3

    move v8, v6

    goto :goto_1

    :cond_3
    move v8, v7

    :goto_1
    if-nez v5, :cond_4

    .line 952
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v9, :cond_4

    if-eqz p5, :cond_4

    .line 953
    invoke-virtual {v0, v9, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_4

    move v5, v6

    :cond_4
    if-nez v8, :cond_5

    .line 956
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v9, :cond_5

    if-eqz p5, :cond_5

    .line 957
    invoke-virtual {v0, v9, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_5

    move v8, v6

    .line 963
    :cond_5
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-nez v9, :cond_6

    move v9, v6

    goto :goto_2

    :cond_6
    move v9, v7

    .line 964
    :goto_2
    iget-object v10, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-nez v10, :cond_7

    move v10, v6

    goto :goto_3

    :cond_7
    move v10, v7

    .line 967
    :goto_3
    iget-object v11, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v11, :cond_d

    .line 969
    iget-object v12, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 970
    array-length v13, v11

    :cond_8
    :goto_4
    if-lez v13, :cond_d

    if-eqz v5, :cond_9

    if-nez v8, :cond_d

    :cond_9
    add-int/lit8 v13, v13, -0x1

    .line 973
    aget-object v14, v11, v13

    .line 974
    invoke-virtual {v14, v12}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    if-nez v5, :cond_b

    .line 976
    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_b

    if-eqz p5, :cond_a

    .line 982
    invoke-virtual {v0, v15, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_a

    move v5, v6

    goto :goto_5

    :cond_a
    move v9, v7

    :cond_b
    :goto_5
    if-nez v8, :cond_8

    .line 991
    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8

    if-eqz p5, :cond_c

    .line 997
    invoke-virtual {v0, v14, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_c

    move v8, v6

    goto :goto_4

    :cond_c
    move v10, v7

    goto :goto_4

    :cond_d
    if-eqz v9, :cond_e

    move v5, v6

    :cond_e
    if-eqz v10, :cond_f

    move v8, v6

    .line 1017
    :cond_f
    iget-boolean v9, v1, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v9, :cond_11

    .line 1018
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1019
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v1, v9, :cond_10

    .line 1021
    iget-object v0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/ActivityManagerInternal;->checkContentProviderUriPermission(Landroid/net/Uri;III)I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_6

    :cond_10
    move v0, v7

    goto :goto_7

    :cond_11
    :goto_6
    move v0, v6

    :goto_7
    if-eqz v5, :cond_12

    if-eqz v8, :cond_12

    if-eqz v0, :cond_12

    goto :goto_8

    :cond_12
    move v6, v7

    :goto_8
    return v6

    .line 939
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must never hold local mLock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z
    .locals 6

    .line 925
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, p2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 926
    invoke-static {v2, p3, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 931
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result p0

    return p0
.end method

.method public final checkUidPermission(Ljava/lang/String;I)I
    .locals 0

    .line 214
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 216
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z
    .locals 7

    and-int/lit8 v0, p3, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez p2, :cond_2

    return v2

    .line 1317
    :cond_2
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_3

    return v1

    .line 1321
    :cond_3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/uri/UriPermission;

    if-eqz p2, :cond_4

    .line 1322
    invoke-virtual {p2, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result p2

    if-lt p2, v0, :cond_4

    return v2

    .line 1327
    :cond_4
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    move v3, v1

    :goto_2
    if-ge v3, p2, :cond_6

    .line 1329
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriPermission;

    .line 1330
    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v6, v5, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v6, :cond_5

    iget-object v6, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v5, v5, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v5}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1331
    invoke-virtual {v4, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v4

    if-lt v4, v0, :cond_5

    return v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return v1
.end method

.method public clearGrantedUriPermissions(Ljava/lang/String;I)V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "clearGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 408
    :try_start_0
    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    .line 409
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final enforceNotIsolatedCaller(Ljava/lang/String;)V
    .locals 2

    .line 1070
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1071
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Isolated process not allowed to call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 751
    invoke-static {}, Lcom/google/android/collect/Maps;->newArrayMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 752
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 755
    :cond_0
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/uri/UriPermission;

    if-nez p0, :cond_1

    .line 757
    new-instance p0, Lcom/android/server/uri/UriPermission;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriPermission;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V

    .line 758
    invoke-virtual {v0, p4, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public final findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .locals 0

    .line 1055
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    .line 1057
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/uri/UriPermission;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 9

    .line 327
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.GET_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "getGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_0
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 334
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    move v6, v3

    .line 335
    :goto_1
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 336
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_0

    .line 337
    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    iget v8, v7, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-ne v8, p2, :cond_1

    iget v8, v7, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v8, :cond_1

    .line 340
    invoke-virtual {v7}, Lcom/android/server/uri/UriPermission;->buildGrantedUriPermission()Landroid/app/GrantedUriPermission;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 344
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 344
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getLocalService()Lcom/android/server/uri/UriGrantsManagerInternal;
    .locals 2

    .line 174
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService$LocalService-IA;)V

    return-object v0
.end method

.method public final getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;
    .locals 6

    .line 1077
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    or-int/lit16 p0, p3, 0x800

    int-to-long v2, p0

    move-object v1, p1

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;
    .locals 8

    const-string v0, "getUriPermissions"

    .line 277
    invoke-virtual {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    const-string/jumbo v0, "packageName"

    .line 278
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 281
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 282
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v3, 0xc0000

    .line 283
    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-ne v1, v0, :cond_8

    .line 290
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 291
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    .line 293
    :try_start_0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_0

    const-string p0, "UriGrantsManagerService"

    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No permission grants found for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 298
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-ge v3, p2, :cond_7

    .line 299
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/uri/UriPermission;

    .line 300
    iget-object v0, p2, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    iget v0, p2, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v0, :cond_2

    .line 302
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 307
    :cond_3
    iget-object p2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    move v0, v3

    :goto_1
    if-ge v0, p2, :cond_7

    .line 309
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 310
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    move v5, v3

    .line 311
    :goto_2
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 312
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    .line 313
    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz p3, :cond_4

    iget v7, v6, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v7, :cond_5

    .line 315
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 320
    :cond_7
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 320
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 286
    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to calling UID "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .locals 0

    .line 238
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionFromOwnerUnlocked(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    return-void
.end method

.method public final grantUriPermissionFromOwnerUnlocked(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .locals 10

    move-object v0, p4

    move-object v1, p0

    .line 248
    iget-object v2, v1, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 249
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "grantUriPermissionFromOwner"

    const/4 v9, 0x0

    move/from16 v5, p7

    .line 248
    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 252
    invoke-static {p1}, Lcom/android/server/uri/UriPermissionOwner;->fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 256
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move v3, p2

    if-eq v3, v2, :cond_1

    .line 257
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "nice try"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    if-eqz v0, :cond_2

    .line 270
    new-instance v4, Lcom/android/server/uri/GrantUri;

    move v7, p5

    move/from16 v2, p6

    invoke-direct {v4, v2, p4, p5}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, v4

    move v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V

    return-void

    .line 267
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown owner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V
    .locals 9

    .line 766
    invoke-static {p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 777
    :cond_0
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 778
    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    const/16 v3, 0x3e8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "UriGrantsManagerService"

    .line 781
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No content provider found for grant: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 786
    :cond_1
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 787
    :try_start_0
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, p2, p1, p3}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object p2

    .line 788
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    invoke-virtual {p2, p4, p5}, Lcom/android/server/uri/UriPermission;->grantModes(ILcom/android/server/uri/UriPermissionOwner;)Z

    .line 790
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x0

    .line 791
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x0

    and-int/lit8 p0, p4, 0x40

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    move v8, p0

    .line 790
    invoke-virtual/range {v2 .. v8}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    return-void

    :catchall_0
    move-exception p0

    .line 788
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 801
    :cond_0
    iget-object v0, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 803
    iget v3, p1, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    iget-object v4, p1, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    .line 804
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/uri/GrantUri;

    iget v6, p1, Lcom/android/server/uri/NeededUriGrants;->flags:I

    move-object v2, p0

    move-object v7, p2

    .line 803
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final grantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V
    .locals 9

    if-eqz p2, :cond_1

    .line 813
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v1, 0x10000000

    invoke-virtual {v0, p2, v1, v2, p6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v8

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    .line 816
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v1

    if-gez v1, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 822
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    return-void

    .line 811
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "targetPkg"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z
    .locals 3

    .line 547
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    .line 548
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const/16 p2, 0x3b

    .line 549
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 550
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const-string p2, ";"

    .line 552
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 553
    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 555
    aget-object v2, p1, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final maybePrunePersistedUriGrantsLocked(I)Z
    .locals 5

    .line 568
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 570
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v2, 0x200

    if-ge v1, v2, :cond_1

    return v0

    .line 572
    :cond_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 573
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    .line 574
    iget v4, v3, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v4, :cond_2

    .line 575
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 579
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    if-gtz p1, :cond_4

    return v0

    .line 582
    :cond_4
    new-instance v2, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;

    invoke-direct {v2}, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_1
    if-ge v0, p1, :cond_5

    .line 584
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermission;

    const/4 v3, -0x1

    .line 588
    invoke-virtual {v2, v3}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    .line 589
    invoke-virtual {p0, v2}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public providePersistentUriGrants()Ljava/util/ArrayList;
    .locals 10

    .line 1341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1343
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1344
    :try_start_0
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 1346
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 1348
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_1

    .line 1350
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 1352
    iget v9, v8, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v9, :cond_0

    .line 1353
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1357
    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final readGrantedUriPermissionsLocked()V
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "Failed reading Uri grants"

    const-string v2, "UriGrantsManagerService"

    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    .line 681
    :try_start_0
    iget-object v6, v0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 682
    :try_start_1
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v7

    .line 685
    :goto_0
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    .line 686
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    if-ne v8, v10, :cond_4

    const-string/jumbo v8, "uri-grant"

    .line 688
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "userHandle"

    const/16 v9, -0x2710

    .line 691
    invoke-interface {v7, v5, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v9, :cond_0

    move v10, v8

    goto :goto_1

    :cond_0
    const-string/jumbo v8, "sourceUserId"

    .line 698
    invoke-interface {v7, v5, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "targetUserId"

    .line 699
    invoke-interface {v7, v5, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move v10, v9

    :goto_1
    const-string/jumbo v9, "sourcePkg"

    .line 701
    invoke-interface {v7, v5, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "targetPkg"

    .line 702
    invoke-interface {v7, v5, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "uri"

    .line 703
    invoke-interface {v7, v5, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const-string/jumbo v13, "prefix"

    const/4 v14, 0x0

    .line 704
    invoke-interface {v7, v5, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    const-string/jumbo v15, "modeFlags"

    .line 705
    invoke-interface {v7, v5, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const-string v14, "createdTime"
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 706
    :try_start_2
    invoke-interface {v7, v5, v14, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 711
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v14

    const/high16 v5, 0xc0000

    move-wide/from16 v18, v3

    const/16 v3, 0x3e8

    invoke-virtual {v0, v14, v8, v5, v3}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_3

    .line 713
    :try_start_3
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 714
    iget-object v4, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v20, v6

    const-wide/16 v5, 0x2000

    :try_start_4
    invoke-virtual {v4, v11, v5, v6, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 717
    new-instance v5, Lcom/android/server/uri/GrantUri;

    if-eqz v13, :cond_1

    const/16 v14, 0x80

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    .line 718
    :goto_2
    invoke-direct {v5, v8, v12, v14}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    .line 719
    invoke-virtual {v0, v9, v11, v4, v5}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v5

    .line 721
    invoke-virtual {v5, v15, v1, v2}, Lcom/android/server/uri/UriPermission;->initPersistedModes(IJ)V

    .line 722
    iget-object v9, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v11, 0x0

    .line 724
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    iget-object v1, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 722
    invoke-virtual/range {v9 .. v15}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    move-object/from16 v2, v17

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v20, v6

    :goto_3
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto/16 :goto_a

    :cond_3
    move-object/from16 v20, v6

    .line 729
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisted grant for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " had source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but instead found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v2, v17

    :try_start_6
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    move-object/from16 v20, v6

    :goto_4
    move-object/from16 v2, v17

    goto :goto_9

    :catch_7
    move-exception v0

    move-object/from16 v20, v6

    :goto_5
    move-object/from16 v2, v17

    :goto_6
    move-object/from16 v1, v16

    goto :goto_a

    :cond_4
    move-object/from16 v16, v1

    move-wide/from16 v18, v3

    move-object/from16 v20, v6

    :goto_7
    move-object/from16 v1, v16

    move-wide/from16 v3, v18

    move-object/from16 v6, v20

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v20, v6

    .line 742
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object/from16 v20, v6

    :goto_8
    move-object/from16 v5, v20

    goto :goto_d

    :catch_8
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v20, v6

    :goto_9
    move-object/from16 v5, v20

    goto :goto_b

    :catch_9
    move-exception v0

    move-object/from16 v20, v6

    :goto_a
    move-object/from16 v5, v20

    goto :goto_c

    :catch_a
    move-object/from16 v20, v6

    :catch_b
    move-object/from16 v5, v20

    goto :goto_e

    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    goto :goto_d

    :catch_c
    move-exception v0

    move-object/from16 v16, v1

    const/4 v5, 0x0

    :goto_b
    move-object/from16 v1, v16

    .line 740
    :try_start_7
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :catch_d
    move-exception v0

    const/4 v5, 0x0

    .line 738
    :goto_c
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_e

    :catchall_3
    move-exception v0

    .line 742
    :goto_d
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 743
    throw v0

    :catch_e
    const/4 v5, 0x0

    .line 742
    :goto_e
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_f
    return-void
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 6

    if-eqz p3, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string/jumbo v2, "releasePersistableUriPermission"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p3, v1, v2, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "releasePersistableUriPermission"

    .line 428
    invoke-virtual {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    :goto_0
    const/4 v1, 0x3

    .line 432
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 435
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    :try_start_0
    new-instance v2, Lcom/android/server/uri/GrantUri;

    const/4 v3, 0x0

    invoke-direct {v2, p4, p1, v3}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v2

    .line 440
    new-instance v4, Lcom/android/server/uri/GrantUri;

    const/16 v5, 0x80

    invoke-direct {v4, p4, p1, v5}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-virtual {p0, v0, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object p4

    if-nez v2, :cond_2

    if-nez p4, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    .line 443
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No permission grants found for UID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " and Uri "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 448
    invoke-virtual {v2, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result p1

    or-int/2addr v3, p1

    .line 449
    invoke-virtual {p0, v2}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    :cond_3
    if-eqz p4, :cond_4

    .line 452
    invoke-virtual {p4, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result p1

    or-int/2addr v3, p1

    .line 453
    invoke-virtual {p0, p4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    :cond_4
    if-eqz v3, :cond_5

    .line 457
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 459
    :cond_5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V
    .locals 2

    .line 1037
    iget v0, p1, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-eqz v0, :cond_0

    return-void

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    return-void

    .line 1047
    :cond_1
    iget-object v1, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1049
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    return-void
.end method

.method public final removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V
    .locals 11

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must narrow by either package or user"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 483
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v2, v1, :cond_a

    .line 485
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 486
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    const/4 v6, 0x1

    if-eq p2, v0, :cond_2

    .line 490
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne p2, v7, :cond_9

    .line 491
    :cond_2
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 492
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_5

    if-nez p4, :cond_4

    .line 495
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 496
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 500
    :cond_5
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    const-string v10, "downloads"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez p3, :cond_6

    goto :goto_2

    :cond_6
    if-eqz p3, :cond_7

    move v9, v0

    goto :goto_3

    :cond_7
    const/16 v9, -0x41

    .line 503
    :goto_3
    invoke-virtual {v8, v9, v6}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v9

    or-int/2addr v3, v9

    .line 508
    iget v8, v8, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v8, :cond_3

    .line 509
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 514
    :cond_8
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 515
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_9
    add-int/2addr v2, v6

    goto :goto_1

    :cond_a
    if-eqz v3, :cond_b

    .line 523
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    :cond_b
    return-void
.end method

.method public final revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .locals 7

    .line 829
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 830
    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0xc0000

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "UriGrantsManagerService"

    .line 833
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No content provider found for permission revoke: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 833
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 838
    :cond_0
    invoke-virtual {p0, v0, p3, p2, p4}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v5

    .line 840
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 841
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V

    .line 843
    monitor-exit v6

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p5, :cond_5

    .line 853
    iget-object p5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/ArrayMap;

    if-eqz p5, :cond_4

    .line 856
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v0

    move v0, v1

    :goto_0
    if-ltz v2, :cond_2

    .line 857
    invoke-virtual {p5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_0

    .line 858
    iget-object v4, v3, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 861
    :cond_0
    iget-object v4, v3, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v5, v4, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v6, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v5, v6, :cond_1

    iget-object v4, v4, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v5, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 862
    invoke-virtual {v4, v5}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v4, p4, 0x40

    .line 865
    invoke-virtual {v3, v4, v1}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v4

    or-int/2addr v0, v4

    .line 867
    iget v3, v3, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v3, :cond_1

    .line 868
    invoke-virtual {p5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 872
    :cond_2
    invoke-virtual {p5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 873
    iget-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    if-eqz v0, :cond_4

    .line 876
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    :cond_4
    return-void

    .line 885
    :cond_5
    iget-object p2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v0

    move p5, v1

    :goto_2
    if-ltz p2, :cond_b

    .line 886
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 887
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 889
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_3
    if-ltz v3, :cond_9

    .line 890
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_6

    .line 891
    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_5

    .line 894
    :cond_6
    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v6, v5, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v7, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v6, v7, :cond_8

    iget-object v5, v5, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v6, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 895
    invoke-virtual {v5, v6}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_8

    or-int/lit8 v5, p4, 0x40

    if-nez p1, :cond_7

    move v6, v0

    goto :goto_4

    :cond_7
    move v6, v1

    .line 898
    :goto_4
    invoke-virtual {v4, v5, v6}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v5

    or-int/2addr p5, v5

    .line 901
    iget v4, v4, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v4, :cond_8

    .line 902
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_8
    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 907
    :cond_9
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 908
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_a
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_b
    if-eqz p5, :cond_c

    .line 913
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    :cond_c
    return-void
.end method

.method public final schedulePersistUriGrants()V
    .locals 3

    .line 1063
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 2

    .line 178
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService$LocalService-IA;)V

    const-class p0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 6

    if-eqz p3, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string/jumbo v2, "takePersistableUriPermission"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p3, v1, v2, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    goto :goto_0

    :cond_0
    const-string/jumbo p3, "takePersistableUriPermission"

    .line 363
    invoke-virtual {p0, p3}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 364
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    :goto_0
    const/4 v0, 0x3

    .line 367
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 370
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    new-instance v1, Lcom/android/server/uri/GrantUri;

    const/4 v2, 0x0

    invoke-direct {v1, p4, p1, v2}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-virtual {p0, p3, v1}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v1

    .line 375
    new-instance v3, Lcom/android/server/uri/GrantUri;

    const/16 v4, 0x80

    invoke-direct {v3, p4, p1, v4}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-virtual {p0, p3, v3}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object p4

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 378
    iget v4, v1, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v4, p2

    if-ne v4, p2, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz p4, :cond_2

    .line 380
    iget v5, p4, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v5, p2

    if-ne v5, p2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-nez v4, :cond_4

    if-eqz v3, :cond_3

    goto :goto_3

    .line 384
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No persistable permission grants found for UID "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " and Uri "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 389
    invoke-virtual {v1, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result p1

    or-int/2addr v2, p1

    :cond_5
    if-eqz v3, :cond_6

    .line 392
    invoke-virtual {p4, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result p1

    or-int/2addr v2, p1

    .line 395
    :cond_6
    invoke-virtual {p0, p3}, Lcom/android/server/uri/UriGrantsManagerService;->maybePrunePersistedUriGrantsLocked(I)Z

    move-result p1

    or-int/2addr p1, v2

    if-eqz p1, :cond_7

    .line 398
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 400
    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final writeGrantedUriPermissions()V
    .locals 13

    .line 1365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1370
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1371
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1372
    :try_start_0
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v4, :cond_2

    .line 1374
    iget-object v8, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 1376
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    move v10, v5

    :goto_1
    if-ge v10, v9, :cond_1

    .line 1378
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/uri/UriPermission;

    .line 1380
    iget v12, v11, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v12, :cond_0

    add-int/lit8 v7, v7, 0x1

    .line 1382
    invoke-virtual {v11}, Lcom/android/server/uri/UriPermission;->snapshot()Lcom/android/server/uri/UriPermission$Snapshot;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1386
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 1390
    :try_start_1
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v0, v1}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1392
    :try_start_2
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v1

    .line 1393
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "uri-grants"

    .line 1394
    invoke-interface {v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1395
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriPermission$Snapshot;

    const-string/jumbo v5, "uri-grant"

    .line 1396
    invoke-interface {v1, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "sourceUserId"

    .line 1397
    iget-object v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget v6, v6, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    invoke-interface {v1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "targetUserId"

    .line 1398
    iget v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->targetUserId:I

    invoke-interface {v1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "sourcePkg"

    .line 1399
    iget-object v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    invoke-interface {v1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "targetPkg"

    .line 1400
    iget-object v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    invoke-interface {v1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "uri"

    .line 1401
    iget-object v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v6, v6, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "prefix"

    .line 1402
    iget-object v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v6, v6, Lcom/android/server/uri/GrantUri;->prefix:Z

    invoke-static {v1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v5, "modeFlags"

    .line 1403
    iget v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->persistedModeFlags:I

    invoke-interface {v1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "createdTime"

    .line 1404
    iget-wide v8, v4, Lcom/android/server/uri/UriPermission$Snapshot;->persistedCreateTime:J

    invoke-interface {v1, v3, v5, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "uri-grant"

    .line 1405
    invoke-interface {v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    :cond_3
    const-string/jumbo v2, "uri-grants"

    .line 1407
    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1408
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 1410
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-object v3, v0

    :catch_1
    if-eqz v3, :cond_4

    .line 1413
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1417
    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

    invoke-virtual {p0, v7}, Lcom/android/server/uri/UriMetricsHelper;->reportPersistentUriFlushed(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 1386
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
