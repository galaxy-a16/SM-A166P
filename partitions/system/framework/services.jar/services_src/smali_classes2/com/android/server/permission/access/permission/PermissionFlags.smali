.class public final Lcom/android/server/permission/access/permission/PermissionFlags;
.super Ljava/lang/Object;
.source "PermissionFlags.kt"


# static fields
.field public static final INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-direct {v0}, Lcom/android/server/permission/access/permission/PermissionFlags;-><init>()V

    sput-object v0, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromApiFlags(ILcom/android/server/permission/access/permission/Permission;I)I
    .locals 5

    and-int/lit8 p0, p3, 0x1

    or-int/lit8 p0, p0, 0x0

    and-int/lit8 v0, p3, 0x2

    or-int/2addr p0, v0

    and-int/lit8 v0, p3, 0x4

    or-int/2addr p0, v0

    const v0, 0x8000

    .line 416
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 p0, p0, 0x8

    :cond_0
    and-int/lit8 v1, p3, 0x10

    or-int/2addr p0, v1

    const/4 v1, 0x1

    .line 420
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 p0, p0, 0x20

    :cond_1
    const/4 v1, 0x2

    .line 423
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 p0, p0, 0x40

    :cond_2
    const/4 v1, 0x4

    .line 426
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit16 p0, p0, 0x80

    :cond_3
    const/16 v2, 0x10

    .line 429
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit16 p0, p0, 0x100

    :cond_4
    const/16 v2, 0x20

    .line 432
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_5

    or-int/lit16 p0, p0, 0x200

    :cond_5
    and-int/lit16 v2, p3, 0x400

    or-int/2addr p0, v2

    const/16 v2, 0x800

    and-int/2addr p3, v2

    or-int/2addr p0, p3

    const/16 p3, 0x40

    .line 437
    invoke-static {p1, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-nez p3, :cond_6

    const/16 p3, 0x80

    .line 438
    invoke-static {p1, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-eqz p3, :cond_7

    :cond_6
    or-int/lit16 p0, p0, 0x1000

    :cond_7
    const/16 p3, 0x100

    .line 441
    invoke-static {p1, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-eqz p3, :cond_8

    or-int/lit16 p0, p0, 0x2000

    :cond_8
    const/16 p3, 0x200

    .line 444
    invoke-static {p1, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-eqz p3, :cond_9

    or-int/lit16 p0, p0, 0x4000

    .line 447
    :cond_9
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-eqz p3, :cond_a

    or-int/2addr p0, v0

    :cond_a
    const/16 p3, 0x1000

    .line 450
    invoke-static {p1, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    const/high16 v0, 0x10000

    if-eqz p3, :cond_b

    or-int/2addr p0, v0

    :cond_b
    const/16 p3, 0x2000

    .line 453
    invoke-static {p1, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    const/high16 v2, 0x20000

    if-eqz p3, :cond_c

    or-int/2addr p0, v2

    :cond_c
    const p3, 0x38000

    .line 458
    invoke-static {p0, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result p3

    const/high16 v3, 0x80000

    const/16 v4, 0x8

    if-nez p3, :cond_e

    .line 134
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {p3, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-eqz p3, :cond_d

    const/high16 p3, 0x40000

    or-int/2addr p0, p3

    .line 140
    :cond_d
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {p2, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_e

    or-int/2addr p0, v3

    .line 466
    :cond_e
    invoke-static {p1, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_f

    const/high16 p2, 0x100000

    or-int/2addr p0, p2

    .line 469
    :cond_f
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_10

    const/high16 p2, 0x200000

    or-int/2addr p0, p2

    .line 472
    :cond_10
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_11

    const/high16 p2, 0x400000

    or-int/2addr p0, p2

    .line 475
    :cond_11
    invoke-static {p1, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-eqz p1, :cond_12

    const/high16 p1, 0x800000

    or-int/2addr p0, p1

    :cond_12
    return p0
.end method

.method public final isAppOpGranted(I)Z
    .locals 0

    .line 340
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x100000

    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPermissionGranted(I)Z
    .locals 2

    const/4 p0, 0x1

    .line 321
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x2

    .line 324
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x4

    .line 327
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return p0

    :cond_2
    const/16 v0, 0x400

    .line 330
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x800

    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/high16 p0, 0x40000

    .line 333
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/16 p0, 0x10

    .line 336
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    :cond_5
    :goto_0
    return p0
.end method

.method public final toApiFlags(I)I
    .locals 5

    const/16 p0, 0x20

    .line 344
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    const/16 v0, 0x40

    .line 347
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 p0, p0, 0x2

    :cond_0
    const/16 v1, 0x80

    .line 350
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 p0, p0, 0x4

    :cond_1
    const/16 v2, 0x100

    .line 353
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 p0, p0, 0x10

    :cond_2
    const/16 v2, 0x200

    .line 356
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 p0, p0, 0x20

    :cond_3
    const/16 v2, 0x1000

    .line 359
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x400

    .line 360
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    or-int/2addr p0, v0

    :cond_5
    const/16 v0, 0x2000

    .line 366
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_6

    or-int/lit16 p0, p0, 0x100

    :cond_6
    const/16 v0, 0x4000

    .line 369
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_7

    or-int/lit16 p0, p0, 0x200

    :cond_7
    const v0, 0x8000

    .line 372
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit16 p0, p0, 0x800

    :cond_8
    const/high16 v1, 0x10000

    .line 375
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_9

    or-int/lit16 p0, p0, 0x1000

    :cond_9
    const/high16 v2, 0x20000

    .line 378
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_a

    or-int/lit16 p0, p0, 0x2000

    :cond_a
    const/high16 v3, 0x40000

    .line 381
    invoke-static {p1, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    const/high16 v4, 0x80000

    if-nez v3, :cond_b

    invoke-static {p1, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    or-int/lit16 p0, p0, 0x4000

    :cond_c
    const/16 v3, 0x8

    .line 384
    invoke-static {p1, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_d

    or-int/2addr p0, v0

    :cond_d
    const/high16 v0, 0x100000

    .line 387
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_e

    or-int/lit8 p0, p0, 0x8

    :cond_e
    const/high16 v0, 0x200000

    .line 390
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_f

    or-int/2addr p0, v1

    :cond_f
    const/high16 v0, 0x400000

    .line 393
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_10

    or-int/2addr p0, v2

    :cond_10
    const/high16 v0, 0x800000

    .line 396
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-eqz p1, :cond_11

    or-int/2addr p0, v4

    :cond_11
    return p0
.end method

.method public final updateFlags(Lcom/android/server/permission/access/permission/Permission;III)I
    .locals 1

    .line 406
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    move-result v0

    .line 407
    invoke-static {v0, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v0

    and-int/2addr p3, p4

    or-int/2addr p3, v0

    .line 408
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/permission/access/permission/PermissionFlags;->fromApiFlags(ILcom/android/server/permission/access/permission/Permission;I)I

    move-result p0

    return p0
.end method

.method public final updateRuntimePermissionGranted(IZ)I
    .locals 0

    const/16 p0, 0x10

    if-eqz p2, :cond_0

    or-int/2addr p0, p1

    goto :goto_0

    .line 403
    :cond_0
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result p0

    :goto_0
    return p0
.end method
