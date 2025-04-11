.class public final enum Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;
.super Ljava/lang/Enum;
.source "PackageFeatureGroup.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum BROADCAST_RECEIVER_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum FOLDABLE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum REFRESH_RATE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum TEST_PACKAGE_FEATURE_GROUP:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;


# instance fields
.field public final mEnabled:Z

.field public final mName:Ljava/lang/String;

.field public final mRawResId:I

.field public final mUnformatted:Z


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;
    .locals 4

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->FOLDABLE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->REFRESH_RATE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    sget-object v2, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->BROADCAST_RECEIVER_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    sget-object v3, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->TEST_PACKAGE_FEATURE_GROUP:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const-string v1, "FOLDABLE_PACKAGE_FEATURE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "FoldablePackagePolicy"

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    const v0, 0x1100009

    goto :goto_0

    :cond_0
    const v0, 0x1100008

    :goto_0
    move v5, v0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(Ljava/lang/String;IZLjava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->FOLDABLE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const-string v8, "REFRESH_RATE_PACKAGE_FEATURE"

    const/4 v9, 0x1

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    const-string v11, "RefreshRatePolicy"

    const v12, 0x110000a

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(Ljava/lang/String;IZLjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->REFRESH_RATE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const-string v2, "BROADCAST_RECEIVER_FEATURE"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "BROADCAST_RECEIVER_ALLOW_LIST"

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(Ljava/lang/String;IZLjava/lang/String;Z)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->BROADCAST_RECEIVER_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const-string v8, "TEST_PACKAGE_FEATURE_GROUP"

    const/4 v9, 0x3

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v11, "TestPackageFeatureGroup"

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(Ljava/lang/String;IZLjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->TEST_PACKAGE_FEATURE_GROUP:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    invoke-static {}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->$values()[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->$VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;I)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(Ljava/lang/String;IZLjava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mEnabled:Z

    iput-object p4, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mRawResId:I

    iput-boolean p6, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mUnformatted:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;Z)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(Ljava/lang/String;IZLjava/lang/String;IZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;
    .locals 1

    const-class v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->$VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    invoke-virtual {v0}, [Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    return-object v0
.end method
