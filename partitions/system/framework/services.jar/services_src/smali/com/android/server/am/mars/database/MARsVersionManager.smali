.class public Lcom/android/server/am/mars/database/MARsVersionManager;
.super Ljava/lang/Object;
.source "MARsVersionManager.java"


# static fields
.field public static final mAutoRunParameterDefault:[Ljava/lang/String;

.field public static final mCurrentImportantDefault:[[Ljava/lang/String;

.field public static final mMARsSettingsInfoDefault:[[Ljava/lang/String;

.field public static final mPolicyInfoDefault:[[Ljava/lang/String;

.field public static mPolicyInfoList:Ljava/util/ArrayList;


# instance fields
.field public mApplicationSizeIncreased:J

.field public mExcludeTargetList:Ljava/util/ArrayList;

.field public mIsCurrentImportantList:Ljava/util/ArrayList;

.field public mIsCurrentImportantMap:Landroid/util/ArrayMap;

.field public mMARsSettingsInfoList:Ljava/util/ArrayList;

.field public mNotifiUpdatedCount:J

.field public mRestrictionList:Ljava/util/ArrayList;

.field public mTrafficAmount:J

.field public mTrafficInterval:J

.field public mUnusedTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const-string/jumbo v0, "marsversion"

    const-string v1, "1020230413"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "skipratio"

    const-string v1, "90"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "killthreshold"

    const-string v1, "100"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "restrictionthreshold"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "unused_app_period_days"

    const-string v1, "32"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "restriction_flag"

    const-string v1, "255"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    const-string v1, "1"

    const-string v2, "1"

    const-string v3, "13"

    const-string v4, "354255120"

    const-string v5, "12"

    const-string v6, "10"

    const-string v7, "10"

    const-string v8, "337379600"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    const-string v2, "0"

    const-string v3, "21"

    const-string v4, "270272648"

    const-string v5, "10"

    const-string v6, "10"

    const-string v7, "5"

    const-string v8, "270272640"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    const-string v3, "0"

    const-string v4, "25"

    const-string v5, "270272648"

    const-string v6, "26"

    const-string v7, "5"

    const-string v8, "1"

    const-string v9, "270272640"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "8"

    const-string v4, "1"

    const-string v5, "26"

    const-string v6, "0"

    const-string v7, "2"

    const-string v8, "5"

    const-string v9, "0"

    const-string v10, "0"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoDefault:[[Ljava/lang/String;

    const-string v0, "2"

    const-string v1, "15"

    const-string v2, "300"

    const-string v3, "1"

    filled-new-array {v0, v1, v2, v3, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mAutoRunParameterDefault:[Ljava/lang/String;

    const-string v1, "0"

    const-string v2, "8000"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v1, "18284"

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v2, "65529"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "4"

    const-string v2, "24032"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "5"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "6"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "7"

    const-string v1, "20251"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    const-string v0, "8"

    const-string v1, "20264"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v11

    const-string v0, "9"

    const-string v1, "24446"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v12

    filled-new-array/range {v4 .. v12}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mCurrentImportantDefault:[[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mTrafficInterval:J

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mUnusedTime:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mTrafficAmount:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mNotifiUpdatedCount:J

    iput-wide v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mApplicationSizeIncreased:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/database/MARsVersionManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/mars/database/MARsVersionManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;
    .locals 1

    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    return-object v0
.end method

.method public static toNormalText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, "##"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final convertListToMap(Ljava/util/ArrayList;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    iget v2, v2, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;->policyNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    iget v3, v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;->importantValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "MARsVersionManager"

    const-string/jumbo p1, "mIsCurrentImportantMap is null!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public convertPolicyNumToName(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "force"

    return-object p0

    :cond_0
    const/4 p0, 0x1

    if-ne p0, p1, :cond_1

    const-string p0, "applocker"

    return-object p0

    :cond_1
    const/4 p0, 0x2

    if-ne p0, p1, :cond_2

    const-string p0, "autorun"

    return-object p0

    :cond_2
    const/4 p0, 0x4

    if-ne p0, p1, :cond_3

    const-string p0, "freecesspolicy"

    return-object p0

    :cond_3
    const/4 p0, 0x5

    if-ne p0, p1, :cond_4

    const-string/jumbo p0, "udspolicy"

    return-object p0

    :cond_4
    const/4 p0, 0x6

    if-ne p0, p1, :cond_5

    const-string/jumbo p0, "sbikepolicy"

    return-object p0

    :cond_5
    const/16 p0, 0x8

    if-ne p0, p1, :cond_6

    const-string p0, "disablepolicy"

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final convertRestrictionTypeToName(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_5

    const/4 p0, 0x2

    if-eq p1, p0, :cond_5

    const/4 p0, 0x7

    if-ne p1, p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x3

    if-eq p1, p0, :cond_4

    const/4 p0, 0x4

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0xe

    if-ne p1, p0, :cond_2

    const-string p0, "Rogue app"

    return-object p0

    :cond_2
    const/16 p0, 0xf

    if-ne p1, p0, :cond_3

    const-string p0, "Foreground Service"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    :goto_0
    const-string p0, "Essential intent"

    return-object p0

    :cond_5
    :goto_1
    const-string p0, "CHN app"

    return-object p0
.end method

.method public getAdjustRestrictionFromDefaultValue()V
    .locals 1

    invoke-static {}, Ljava/com/android/server/am/mars/database/MARsListManager;->getInstance()Ljava/com/android/server/am/mars/database/MARsListManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/com/android/server/am/mars/database/MARsListManager;->getAdjustRestrictionDefault()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustRestriction(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getExcludeTargetFromDefaultValue()V
    .locals 1

    invoke-static {}, Ljava/com/android/server/am/mars/database/MARsListManager;->getInstance()Ljava/com/android/server/am/mars/database/MARsListManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/com/android/server/am/mars/database/MARsListManager;->getExcludePackageDefault()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustTargetExcludePackage(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getIsCurrentImportantFromDefaultValue()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mCurrentImportantDefault:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    new-instance v7, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    invoke-direct {v7, p0, v6, v5}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;II)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getMARsLocalVersionFromDefaultValue()Ljava/lang/String;
    .locals 7

    sget-object p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p0, v3

    aget-object v5, v4, v2

    const-string/jumbo v6, "marsversion"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    aget-object v1, v4, v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getMARsSettingsInfoFromDefaultValue()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    aget-object v6, v5, v3

    const/4 v7, 0x1

    aget-object v5, v5, v7

    new-instance v7, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;

    invoke-direct {v7, p0, v6, v5}, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setMARsSettingsInfoList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getPolicyFromDefaultValue()V
    .locals 22

    move-object/from16 v13, p0

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget-object v15, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoDefault:[[Ljava/lang/String;

    array-length v12, v15

    const/16 v16, 0x0

    move/from16 v10, v16

    :goto_0
    if-ge v10, v12, :cond_0

    aget-object v0, v15, v10

    aget-object v1, v0, v16

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v1, 0x6

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-virtual {v13, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->convertPolicyNumToName(I)Ljava/lang/String;

    move-result-object v2

    new-instance v11, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v20, v10

    move-object/from16 v21, v15

    move-object v15, v11

    move-wide/from16 v10, v17

    move/from16 v17, v12

    move/from16 v12, v19

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;Ljava/lang/String;IIIIIJJI)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v20, 0x1

    move/from16 v12, v17

    move-object/from16 v15, v21

    goto :goto_0

    :cond_0
    invoke-virtual {v13, v14}, Lcom/android/server/am/mars/database/MARsVersionManager;->setPolicy(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getRestrictionFlag()I
    .locals 7

    sget-object p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    aget-object v5, v4, v1

    const/4 v6, 0x1

    aget-object v4, v4, v6

    :try_start_0
    const-string/jumbo v6, "restriction_flag"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception getRestrictionFlag!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MARsVersionManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final isActionMatch(Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string v0, "equals"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string v0, "equalsIgnoreCase"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string v0, "contains"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string/jumbo v0, "startsWith"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_3
    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string v0, "endsWith"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    iget v2, v1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->restrictionType:I

    if-ne p1, v2, :cond_0

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatchInternal(Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " restrictionType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsVersionManager;->convertRestrictionTypeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsVersionManager;->isRestrictionTypeAllowed(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " callee = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " caller = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " action = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MARsVersionManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isAdjustRestrictionMatchInternal(Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iget-object p2, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    if-nez p2, :cond_6

    :cond_1
    iget-object p2, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    iget-object p2, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    if-nez p2, :cond_6

    :cond_3
    iget-object p2, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    invoke-virtual {p0, p1, p4}, Lcom/android/server/am/mars/database/MARsVersionManager;->isActionMatch(Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    if-nez p0, :cond_6

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final isRestrictionTypeAllowed(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public setAdjustRestriction(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    return-void
.end method

.method public setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsVersionManager;->convertListToMap(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setAdjustTargetExcludePackage(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    return-void
.end method

.method public setMARsSettingsInfoList(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public setPolicy(Ljava/util/ArrayList;)V
    .locals 0

    sput-object p1, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    return-void
.end method
