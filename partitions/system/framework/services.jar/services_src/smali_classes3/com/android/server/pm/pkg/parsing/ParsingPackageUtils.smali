.class public Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;
.super Ljava/lang/Object;
.source "ParsingPackageUtils.java"


# static fields
.field public static final SDK_CODENAMES:[Ljava/lang/String;

.field public static final SDK_VERSION:I

.field public static sCompatibilityModeEnabled:Z

.field public static sUseRoundIcon:Z


# instance fields
.field public mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

.field public mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mSeparateProcesses:[Ljava/lang/String;

.field public mSplitPermissionInfos:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    .line 225
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->SDK_CODENAMES:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 227
    sput-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    const/4 v0, 0x0

    .line 228
    sput-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/util/List;Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;)V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    .line 351
    iput-object p2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 352
    iput-object p3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    .line 353
    iput-object p4, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

    return-void
.end method

.method public static aFloat(ILandroid/content/res/TypedArray;)F
    .locals 1

    const/4 v0, 0x0

    .line 3303
    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    return p0
.end method

.method public static adjustPackageToBeUnresizeableAndUnpipable(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V
    .locals 6

    .line 3051
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object p0

    .line 3052
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3054
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 3055
    invoke-static {v3, v1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setResizeMode(Lcom/android/server/pm/pkg/component/ParsedActivity;I)V

    .line 3057
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v4

    const v5, -0x400001

    and-int/2addr v4, v5

    .line 3056
    invoke-static {v3, v4}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setExactFlags(Lcom/android/server/pm/pkg/component/ParsedComponent;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static anInt(IILandroid/content/res/TypedArray;)I
    .locals 0

    .line 3307
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method public static anInt(ILandroid/content/res/TypedArray;)I
    .locals 1

    const/4 v0, 0x0

    .line 3315
    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method public static anInteger(IILandroid/content/res/TypedArray;)I
    .locals 0

    .line 3311
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p0

    return p0
.end method

.method public static bool(ZILandroid/content/res/TypedArray;)Z
    .locals 0

    .line 3295
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    return p0
.end method

.method public static convertCompatPermissions(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V
    .locals 5

    .line 3014
    sget-object v0, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3015
    sget-object v2, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    aget-object v2, v2, v1

    .line 3016
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    move-result v4

    if-lt v3, v4, :cond_0

    goto :goto_1

    .line 3019
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3020
    invoke-virtual {v2}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static exactSizedCopyOfSparseArray(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1697
    :cond_0
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v1, 0x0

    .line 1698
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1699
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static generateAppDetailsHiddenActivity(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 4

    .line 2762
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":app_details"

    .line 2763
    invoke-static {v0, v0, v1, p0}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2765
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2766
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2769
    :cond_0
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2773
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getUiOptions()I

    move-result v3

    .line 2774
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isHardwareAccelerated()Z

    move-result p1

    .line 2772
    invoke-static {v0, v2, v3, v1, p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->makeAppDetailsActivity(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6

    .line 3131
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v2

    .line 3132
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v5, p2

    .line 3131
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZI[Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Z)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6

    .line 3138
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isStaticSharedLibrary()Z

    move-result v2

    .line 3139
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v5, p2

    .line 3138
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZI[Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZI[Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .locals 12

    move-object v0, p0

    move-object/from16 v7, p4

    .line 3154
    sget-object v5, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const-string v1, "collectCertificates"

    const-wide/32 v8, 0x40000

    .line 3156
    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p5

    move v4, p2

    move v6, p3

    .line 3158
    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 3166
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3167
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3192
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 3170
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/content/pm/SigningDetails;

    .line 3171
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "framework/framework-res.apk"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3173
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    .line 3174
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3175
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move v11, v2

    .line 3176
    :goto_0
    array-length v2, v7

    if-ge v11, v2, :cond_2

    .line 3177
    aget-object v2, v7, v11

    move-object v1, p0

    move/from16 v3, p5

    move v4, p2

    move-object v5, v10

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 3185
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3186
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3192
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3193
    throw v0
.end method

.method public static getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 0

    .line 3200
    invoke-static {p5}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result p5

    if-eqz p3, :cond_0

    const/4 p5, 0x2

    :cond_0
    if-eqz p2, :cond_1

    .line 3209
    invoke-static {p0, p1, p5}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    goto :goto_0

    .line 3212
    :cond_1
    invoke-static {p0, p1, p5}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 3215
    :goto_0
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 3216
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 3222
    :cond_2
    sget-object p3, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p4, p3, :cond_3

    return-object p2

    .line 3225
    :cond_3
    invoke-virtual {p4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p3

    .line 3226
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/SigningDetails;

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p2

    .line 3225
    invoke-static {p3, p2}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 3227
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has mismatched certificates"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x68

    invoke-interface {p0, p2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 3231
    :cond_4
    invoke-interface {p0, p4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static hasDomainURLs(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z
    .locals 9

    .line 2785
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object p0

    .line 2786
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 2788
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 2789
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v3

    .line 2790
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_4

    .line 2792
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    const-string v7, "android.intent.action.VIEW"

    .line 2793
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    .line 2794
    :cond_0
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    const-string v7, "http"

    .line 2795
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "https"

    .line 2796
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    const/4 p0, 0x1

    return p0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public static hasTooManyComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z
    .locals 2

    .line 841
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 842
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getReceivers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    const/16 p0, 0x7530

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 0

    .line 3329
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 0

    .line 3333
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6

    .line 2717
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2718
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 2720
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2722
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_4

    :cond_1
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 2727
    :cond_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "additional-certificate"

    .line 2728
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2729
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestAdditionalCertificate:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 2732
    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    .line 2735
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2736
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad additional-certificate declaration with empty certDigest:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2747
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :cond_3
    :try_start_1
    const-string v4, ":"

    const-string v5, ""

    .line 2743
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 2744
    const-class v4, Ljava/lang/String;

    invoke-static {v4, v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2747
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2748
    throw p0

    .line 2752
    :cond_4
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseAdoptPermissions(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1

    .line 3001
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 3003
    :try_start_0
    invoke-static {p3, p3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 3005
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addAdoptPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 3007
    :cond_0
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3009
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3010
    throw p0
.end method

.method public static parseAttribution(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 0

    .line 1244
    invoke-static {p2, p3, p0}, Lcom/android/server/pm/pkg/component/ParsedAttributionUtils;->parseAttribution(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 1246
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1247
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1249
    :cond_0
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/component/ParsedAttribution;

    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseExtensionSdk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 3

    .line 1709
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestExtensionSdk:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    .line 1711
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v1, 0x1

    .line 1712
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1714
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p1, -0x6c

    if-gez p2, :cond_0

    const-string p2, "<extension-sdk> must specify an sdkVersion >= 0"

    .line 1718
    invoke-interface {p0, p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_0
    if-gez v0, :cond_1

    const-string p2, "<extension-sdk> must specify minExtensionVersion >= 0"

    .line 1723
    invoke-interface {p0, p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1729
    :cond_1
    :try_start_1
    invoke-static {p2}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 1731
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package requires "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extension version "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " which exceeds device version "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v0, -0xc

    invoke-interface {p0, v0, p3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 1741
    :cond_2
    invoke-virtual {p3, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1742
    invoke-interface {p0, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1737
    :catch_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Specified sdkVersion "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not valid"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1714
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1715
    throw p0
.end method

.method public static parseFeatureGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6

    .line 1540
    new-instance v0, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    .line 1542
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    const/4 v2, 0x0

    .line 1544
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 1546
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_3

    :cond_0
    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    goto :goto_0

    .line 1551
    :cond_1
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "uses-feature"

    .line 1552
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1553
    invoke-static {p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v3

    .line 1556
    iget v5, v3, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v4, v5

    iput v4, v3, Landroid/content/pm/FeatureInfo;->flags:I

    .line 1557
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 1559
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <feature-group>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageParsing"

    .line 1559
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 1567
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/content/pm/FeatureInfo;

    iput-object p2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 1568
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/FeatureInfo;

    iput-object p2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 1571
    :cond_4
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1572
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .locals 3

    .line 1517
    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 1518
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 1522
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v1, 0x3

    .line 1523
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 1524
    iget-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1525
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    :cond_0
    const/4 p1, 0x2

    .line 1528
    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1529
    iget p1, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr p1, v2

    iput p1, v0, Landroid/content/pm/FeatureInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1533
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1534
    throw p1
.end method

.method public static parseInstallConstraints(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 0

    .line 1776
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/pkg/component/InstallConstraintsTagParser;->parseInstallConstraints(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseInstrumentation(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1

    .line 2975
    sget-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/server/pm/pkg/component/ParsedInstrumentationUtils;->parseInstrumentation(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 2977
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2978
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2980
    :cond_0
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addInstrumentation(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseKeySets(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1105
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 1109
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 1110
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 1111
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 1112
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    :goto_0
    const/4 v11, -0x1

    const/4 v12, 0x0

    .line 1113
    :cond_0
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const-string v14, "PackageParsing"

    const/4 v15, 0x1

    if-eq v13, v15, :cond_d

    const/4 v9, 0x3

    if-ne v13, v9, :cond_1

    .line 1114
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    if-le v10, v4, :cond_d

    :cond_1
    if-ne v13, v9, :cond_2

    .line 1116
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-ne v9, v11, :cond_0

    goto :goto_0

    .line 1122
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1123
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v13, 0x0

    sparse-switch v10, :sswitch_data_0

    :goto_2
    const/4 v9, -0x1

    goto :goto_3

    :sswitch_0
    const-string/jumbo v10, "public-key"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x2

    goto :goto_3

    :sswitch_1
    const-string v10, "key-set"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    move v9, v15

    goto :goto_3

    :sswitch_2
    const-string/jumbo v10, "upgrade-key-set"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    move v9, v13

    :goto_3
    const-string v10, "Improperly nested \'key-set\' tag at "

    packed-switch v9, :pswitch_data_0

    const-string v9, "<key-sets>"

    .line 1198
    invoke-static {v9, v1, v3, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    .line 1200
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1201
    invoke-interface {v0, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_0
    if-nez v12, :cond_6

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1142
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1145
    :cond_6
    sget-object v9, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    invoke-virtual {v2, v3, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1148
    :try_start_0
    invoke-static {v13, v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v10

    .line 1150
    invoke-static {v15, v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_7

    .line 1152
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_7

    .line 1153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'public-key\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must define a public-key value on first use at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1153
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_7
    if-eqz v13, :cond_b

    .line 1158
    :try_start_1
    invoke-static {v13}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v13

    if-nez v13, :cond_8

    .line 1160
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " key-set "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " will not be added to the package\'s defined key-sets."

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1160
    invoke-static {v14, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-virtual {v8, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1165
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1182
    :goto_4
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 1168
    :cond_8
    :try_start_2
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 1169
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/PublicKey;

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    goto :goto_5

    .line 1174
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of \'public-key\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " conflicts with previously defined value at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1174
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1182
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1172
    :cond_a
    :goto_5
    :try_start_3
    invoke-virtual {v5, v10, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    :cond_b
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArraySet;

    invoke-virtual {v13, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1180
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 1182
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1183
    throw v0

    :pswitch_1
    if-eqz v12, :cond_c

    .line 1126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1126
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1129
    :cond_c
    sget-object v9, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    invoke-virtual {v2, v3, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1131
    :try_start_4
    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v12

    .line 1133
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v7, v12, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1137
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1138
    throw v0

    .line 1186
    :pswitch_2
    sget-object v9, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    invoke-virtual {v2, v3, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1189
    :try_start_5
    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 1191
    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1192
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1194
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1195
    throw v0

    .line 1206
    :cond_d
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1207
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1208
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    const-string v4, "Package"

    if-eqz v3, :cond_e

    .line 1209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AndroidManifest.xml \'key-set\' and \'public-key\' names must be distinct."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1213
    :cond_e
    invoke-virtual {v7}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1214
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1215
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v10

    const-string v11, " AndroidManifest.xml \'key-set\' "

    if-nez v10, :cond_10

    .line 1216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " has no valid associated \'public-key\'. Not including in package\'s defined key-sets."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1220
    :cond_10
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1221
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " contained improper \'public-key\' tags. Not including in package\'s defined key-sets."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1227
    :cond_11
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1228
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/PublicKey;

    invoke-interface {v1, v9, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_7

    .line 1231
    :cond_12
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getKeySetMapping()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1232
    invoke-interface {v1, v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setUpgradeKeySets(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1238
    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1234
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AndroidManifest.xml does not define all \'upgrade-key-set\'s ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x519cd6bd -> :sswitch_2
        -0x30ac780c -> :sswitch_1
        0x717268fb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseLibrary(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1

    .line 2491
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 2495
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2498
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 2499
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2500
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2503
    :cond_0
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2505
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2506
    throw p0
.end method

.method public static parseMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 8

    .line 3067
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    .line 3071
    :try_start_0
    invoke-static {v0, v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    .line 3070
    invoke-static {v1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3073
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires an android:name attribute"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3116
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 3076
    :cond_0
    :try_start_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 3077
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    goto :goto_0

    :cond_1
    move-object v7, v1

    :goto_0
    const/4 p1, 0x2

    .line 3078
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3079
    iget v2, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_2

    .line 3080
    new-instance v1, Landroid/content/pm/PackageManager$Property;

    iget v4, p1, Landroid/util/TypedValue;->resourceId:I

    const/4 v5, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 3082
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 3084
    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 3085
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 3086
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3087
    :cond_3
    new-instance p0, Landroid/content/pm/PackageManager$Property;

    invoke-direct {p0, v3, v1, v6, v7}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    goto :goto_1

    :cond_4
    const/16 v5, 0x12

    if-ne v4, v5, :cond_6

    .line 3089
    new-instance v1, Landroid/content/pm/PackageManager$Property;

    iget p0, v2, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_5

    move v0, p1

    :cond_5
    invoke-direct {v1, v3, v0, v6, v7}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/16 p1, 0x10

    if-lt v4, p1, :cond_7

    const/16 p1, 0x1f

    if-gt v4, p1, :cond_7

    .line 3092
    new-instance v1, Landroid/content/pm/PackageManager$Property;

    iget v4, v2, Landroid/util/TypedValue;->data:I

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/4 p1, 0x4

    if-ne v4, p1, :cond_8

    .line 3094
    new-instance v1, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    invoke-direct {v1, v3, p0, v6, v7}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string p1, "PackageParsing"

    .line 3097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3100
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " at "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3101
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3102
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3097
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    :goto_1
    invoke-interface {p5, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3116
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 3110
    :cond_9
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires an android:value or android:resource attribute"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3116
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3117
    throw p0
.end method

.method public static parseOriginalPackage(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1

    .line 2985
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 2987
    :try_start_0
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p3

    .line 2990
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2991
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addOriginalPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2993
    :cond_0
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2995
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2996
    throw p0
.end method

.method public static parseOverlay(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6

    .line 2883
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    .line 2885
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2886
    invoke-static {v1, v1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v2

    if-nez v0, :cond_0

    const-string p1, "<overlay> does not specify a target package"

    .line 2889
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2918
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :cond_0
    if-ltz v2, :cond_3

    const/16 v3, 0x270f

    if-le v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    .line 2895
    :try_start_1
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    .line 2897
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2899
    invoke-static {v3, v4}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2900
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping target and overlay pair "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2901
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": overlay ignored due to required system property: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with value: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "PackageParsing"

    .line 2904
    invoke-static {p3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2918
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2908
    :cond_2
    :try_start_2
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setResourceOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2909
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOverlayTarget(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2910
    invoke-interface {p1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOverlayPriority(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 p3, 0x3

    .line 2912
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 2911
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 p3, 0x2

    .line 2914
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 2913
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOverlayCategory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 p3, 0x4

    .line 2916
    invoke-static {v1, p3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result p3

    .line 2915
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOverlayIsStatic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2908
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2918
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :cond_3
    :goto_0
    :try_start_3
    const-string p1, "<overlay> priority must be between 0 and 9999"

    .line 2891
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2918
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2919
    throw p0
.end method

.method public static parsePermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1

    .line 1266
    sget-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->parsePermission(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 1268
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1269
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1271
    :cond_0
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/component/ParsedPermission;

    if-eqz p2, :cond_1

    .line 1273
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1275
    :cond_1
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parsePermissionGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1

    .line 1255
    sget-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->parsePermissionGroup(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 1257
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1258
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1260
    :cond_0
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parsePermissionTree(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1

    .line 1281
    sget-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->parsePermissionTree(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 1283
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1284
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1286
    :cond_0
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/component/ParsedPermission;

    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseProcesses(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p0

    .line 2691
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ParsedProcessUtils;->parseProcesses([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 2693
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2694
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2697
    :cond_0
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setProcesses(Ljava/util/Map;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseProfileable(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 2

    .line 2703
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProfileable:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 2705
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isProfileableByShell()Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_1

    .line 2706
    invoke-static {v0, v1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p3, v1

    .line 2705
    :goto_1
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setProfileableByShell(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2707
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isProfileable()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 2708
    invoke-static {v1, v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result p3

    if-eqz p3, :cond_2

    move v0, v1

    .line 2707
    :cond_2
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setProfileable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2710
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2711
    throw p0
.end method

.method public static parseProtectedBroadcast(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1

    .line 2924
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 2928
    :try_start_0
    invoke-static {p3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2930
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addProtectedBroadcast(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2932
    :cond_0
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2934
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2935
    throw p0
.end method

.method public static parseQueries(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 12

    .line 1781
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 1783
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 1785
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_14

    :cond_1
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 1789
    :cond_2
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "intent"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v10, p0

    .line 1790
    invoke-static/range {v4 .. v10}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoUtils;->parseIntentInfo(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 1793
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1794
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1797
    :cond_3
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 1802
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v4

    .line 1803
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v5

    .line 1804
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v6

    .line 1805
    invoke-virtual {v1}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-nez v5, :cond_4

    if-nez v6, :cond_4

    if-nez v4, :cond_4

    const-string p1, "intent tags must contain either an action or data."

    .line 1807
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_4
    if-le v4, v2, :cond_5

    const-string p1, "intent tag may have at most one action."

    .line 1810
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_5
    if-le v6, v2, :cond_6

    const-string p1, "intent tag may have at most one data type."

    .line 1813
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_6
    if-le v5, v2, :cond_7

    const-string p1, "intent tag may have at most one data scheme."

    .line 1816
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_7
    if-le v7, v2, :cond_8

    const-string p1, "intent tag may have at most one data host."

    .line 1819
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1821
    :cond_8
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1822
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v9

    move v10, v3

    :goto_1
    if-ge v10, v9, :cond_9

    .line 1823
    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_9
    const/4 v9, 0x0

    if-ne v7, v2, :cond_a

    .line 1826
    invoke-virtual {v1}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v3

    goto :goto_2

    :cond_a
    move-object v7, v9

    :goto_2
    const-string v10, "/*"

    if-ne v5, v2, :cond_b

    .line 1829
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 1830
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1831
    invoke-virtual {v5, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1832
    invoke-virtual {v5, v10}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1833
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    goto :goto_3

    :cond_b
    move-object v5, v9

    :goto_3
    if-ne v6, v2, :cond_d

    .line 1836
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    .line 1839
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 1840
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_c
    move-object v9, v6

    if-nez v5, :cond_d

    .line 1843
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string v6, "content"

    .line 1844
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "*"

    .line 1845
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1846
    invoke-virtual {v5, v10}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1847
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1850
    :cond_d
    invoke-virtual {v8, v5, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    if-ne v4, v2, :cond_e

    .line 1852
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1854
    :cond_e
    invoke-interface {p1, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addQueriesIntent(Landroid/content/Intent;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto/16 :goto_0

    .line 1855
    :cond_f
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1856
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestQueriesPackage:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1858
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 1860
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string p1, "Package name is missing from package tag."

    .line 1861
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1863
    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addQueriesPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto/16 :goto_0

    .line 1864
    :cond_11
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "provider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1865
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestQueriesProvider:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1868
    :try_start_0
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 1870
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string p1, "Authority missing from provider tag."

    const/16 p2, -0x6c

    .line 1871
    invoke-interface {p0, p2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1881
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 1876
    :cond_12
    :try_start_1
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ";"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    :goto_4
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1878
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addQueriesProvider(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 1881
    :cond_13
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1882
    throw p0

    .line 1885
    :cond_14
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseRestrictUpdateHash(ILandroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-eqz p0, :cond_2

    .line 1748
    sget-object p0, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    invoke-virtual {p3, p4, p0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p3, 0x0

    .line 1750
    :try_start_0
    invoke-virtual {p0, p3, p3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 1755
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    .line 1756
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    :goto_0
    if-ge p3, v1, :cond_0

    .line 1758
    div-int/lit8 v3, p3, 0x2

    invoke-virtual {p4, p3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, p3, 0x1

    .line 1760
    invoke-virtual {p4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 1762
    :cond_0
    invoke-interface {p2, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 1764
    invoke-interface {p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1767
    :goto_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1768
    throw p1

    .line 1770
    :cond_2
    :goto_2
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseSdkLibrary(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 3

    .line 2417
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSdkLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 2420
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 2422
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-eqz p2, :cond_3

    if-gez v0, :cond_0

    goto :goto_0

    .line 2430
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo p0, "sharedUserId not allowed in SDK library"

    const/16 p2, -0x6b

    .line 2431
    invoke-interface {p3, p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2444
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2435
    :cond_1
    :try_start_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2436
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Multiple SDKs for package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2437
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2436
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2444
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2440
    :cond_2
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSdkLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2441
    invoke-interface {p0, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSdkLibVersionMajor(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2442
    invoke-interface {p0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSdkLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2440
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2444
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2428
    :cond_3
    :goto_0
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad sdk-library declaration name: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " version: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2444
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2445
    throw p0
.end method

.method public static parseSharedUser(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 5

    const/4 v0, 0x0

    .line 1071
    invoke-static {v0, v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    .line 1072
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1073
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1076
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 1077
    invoke-static {p0, v1, v3, v3}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 1079
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1080
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x6b

    .line 1080
    invoke-interface {p0, p2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1087
    :cond_1
    invoke-static {}, Lcom/android/server/pm/SharedUidMigration;->isDisabled()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xd

    .line 1088
    invoke-static {v0, v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 1089
    sget v4, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-ge v2, v4, :cond_2

    move v0, v3

    .line 1093
    :cond_2
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLeavingSharedUser(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 1094
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSharedUserId(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 v0, 0x3

    .line 1096
    invoke-static {v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p2

    .line 1095
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSharedUserLabelResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 1092
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseStaticLibrary(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 4

    .line 2452
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestStaticLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 2456
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 2458
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v3, 0x2

    .line 2460
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz v0, :cond_3

    if-gez v1, :cond_0

    goto :goto_0

    .line 2468
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo p0, "sharedUserId not allowed in static shared library"

    const/16 p2, -0x6b

    .line 2469
    invoke-interface {p3, p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2483
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2473
    :cond_1
    :try_start_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2474
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Multiple static-shared libs for package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2475
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2474
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2483
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2478
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2480
    invoke-static {p2, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    .line 2479
    invoke-interface {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibraryVersion(J)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2481
    invoke-interface {p0, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2478
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2483
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2466
    :cond_3
    :goto_0
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad static-library declaration name: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " version: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2483
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2484
    throw p0
.end method

.method public static parseSupportScreens(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 5

    .line 2940
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x6

    const/4 v0, 0x0

    .line 2942
    :try_start_0
    invoke-static {v0, p3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result p3

    const/4 v1, 0x7

    .line 2944
    invoke-static {v0, v1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v1

    const/16 v2, 0x8

    .line 2946
    invoke-static {v0, v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v2

    const/4 v3, 0x1

    .line 2953
    invoke-static {v3, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 2952
    invoke-interface {p1, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSmallScreensSupported(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 v4, 0x2

    .line 2955
    invoke-static {v3, v4, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 2954
    invoke-interface {p1, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setNormalScreensSupported(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 v4, 0x3

    .line 2957
    invoke-static {v3, v4, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 2956
    invoke-interface {p1, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLargeScreensSupported(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 v4, 0x5

    .line 2959
    invoke-static {v3, v4, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 2958
    invoke-interface {p1, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setExtraLargeScreensSupported(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 v4, 0x4

    .line 2961
    invoke-static {v3, v4, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 2960
    invoke-interface {p1, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setResizeable(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2963
    invoke-static {v3, v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v0

    .line 2962
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAnyDensity(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2964
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRequiresSmallestWidthDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2965
    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setCompatibleWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2966
    invoke-interface {p1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLargestWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2951
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2968
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2969
    throw p0
.end method

.method public static parseUsesConfiguration(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 4

    .line 1473
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1474
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 1476
    :try_start_0
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    const/4 v1, 0x1

    .line 1479
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    const/4 v2, 0x2

    .line 1482
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1485
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v1, v3

    iput v1, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    :cond_0
    const/4 v1, 0x3

    .line 1487
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    const/4 v1, 0x4

    .line 1490
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1493
    iget p3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr p3, v2

    iput p3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1495
    :cond_1
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1496
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1498
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1499
    throw p0
.end method

.method public static parseUsesFeature(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 0

    .line 1504
    invoke-static {p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object p2

    .line 1505
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1507
    iget-object p3, p2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 1508
    new-instance p3, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {p3}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1509
    iget p2, p2, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput p2, p3, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 1510
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1513
    :cond_0
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1

    .line 2628
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 2632
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    .line 2633
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz p3, :cond_1

    .line 2636
    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    if-eqz v0, :cond_0

    .line 2639
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 2640
    invoke-interface {v0, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_0

    .line 2643
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2644
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2649
    :cond_1
    :goto_0
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2651
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2652
    throw p0
.end method

.method public static parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1

    .line 2658
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesNativeLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 2662
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    .line 2664
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz p3, :cond_1

    if-eqz v0, :cond_0

    .line 2670
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 2671
    invoke-interface {v0, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_0

    .line 2674
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2675
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2680
    :cond_1
    :goto_0
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2682
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2683
    throw p0
.end method

.method public static parseUsesSdk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1578
    sget v4, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    if-lez v4, :cond_12

    move/from16 v5, p4

    and-int/lit16 v5, v5, 0x200

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 1580
    :goto_0
    sget-object v8, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    invoke-virtual {v2, v3, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1589
    :try_start_0
    invoke-virtual {v8, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x3

    if-eqz v9, :cond_2

    .line 1591
    iget v12, v9, Landroid/util/TypedValue;->type:I

    if-ne v12, v11, :cond_1

    iget-object v12, v9, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v12, :cond_1

    .line 1592
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1593
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    xor-int/2addr v12, v7

    move v13, v12

    move-object v12, v9

    move v9, v7

    goto :goto_2

    .line 1596
    :cond_1
    iget v9, v9, Landroid/util/TypedValue;->data:I

    move v13, v7

    goto :goto_1

    :cond_2
    move v13, v6

    move v9, v7

    :goto_1
    move-object v12, v10

    .line 1601
    :goto_2
    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 1603
    iget v15, v14, Landroid/util/TypedValue;->type:I

    if-ne v15, v11, :cond_4

    iget-object v15, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v15, :cond_4

    .line 1604
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    if-nez v13, :cond_3

    move-object v12, v14

    goto :goto_3

    :cond_3
    move-object/from16 v17, v14

    move-object v14, v12

    move-object/from16 v12, v17

    goto :goto_3

    .line 1610
    :cond_4
    iget v6, v14, Landroid/util/TypedValue;->data:I

    move-object v14, v12

    move-object v12, v10

    goto :goto_3

    :cond_5
    move v6, v9

    move-object v14, v12

    :goto_3
    if-eqz v5, :cond_6

    const/4 v13, 0x2

    .line 1618
    invoke-virtual {v8, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 1621
    iget v13, v13, Landroid/util/TypedValue;->data:I

    goto :goto_4

    :cond_6
    const v13, 0x7fffffff

    .line 1625
    :goto_4
    sget-object v15, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->SDK_CODENAMES:[Ljava/lang/String;

    .line 1626
    invoke-static {v6, v12, v15, v0, v5}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 1628
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1629
    invoke-interface {v0, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1686
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1632
    :cond_7
    :try_start_1
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1635
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12, v6}, Landroid/content/pm/parsing/result/ParseInput;->enableDeferredError(Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v12

    .line 1636
    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1637
    invoke-interface {v0, v12}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1686
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1641
    :cond_8
    :try_start_2
    invoke-static {v9, v14, v4, v15, v0}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    .line 1642
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1643
    invoke-interface {v0, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1686
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1646
    :cond_9
    :try_start_3
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1648
    invoke-interface {v1, v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMinSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v9

    .line 1649
    invoke-interface {v9, v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setTargetSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    if-eqz v5, :cond_b

    .line 1652
    invoke-static {v13, v4, v0}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeMaxSdkVersion(IILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 1653
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1654
    invoke-interface {v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1686
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1656
    :cond_a
    :try_start_4
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1657
    invoke-interface {v1, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMaxSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1661
    :cond_b
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 1663
    :cond_c
    :goto_5
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    if-eq v5, v7, :cond_11

    if-ne v5, v11, :cond_d

    .line 1664
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v4, :cond_11

    :cond_d
    if-eq v5, v11, :cond_c

    const/4 v6, 0x4

    if-ne v5, v6, :cond_e

    goto :goto_5

    .line 1670
    :cond_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "extension-sdk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v10, :cond_f

    .line 1672
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    .line 1674
    :cond_f
    invoke-static {v0, v2, v3, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseExtensionSdk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 1675
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    :cond_10
    const-string v5, "<uses-sdk>"

    .line 1677
    invoke-static {v5, v1, v3, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 1680
    :goto_6
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1681
    invoke-interface {v0, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1686
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1684
    :cond_11
    :try_start_5
    invoke-static {v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->exactSizedCopyOfSparseArray(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1686
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_7

    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1687
    throw v0

    .line 1689
    :cond_12
    :goto_7
    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 8

    const-string v0, ""

    .line 2513
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdkLibrary:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 2516
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, -0x1

    .line 2518
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/4 v5, 0x1

    .line 2520
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_4

    if-ltz v4, :cond_4

    if-nez v6, :cond_0

    goto :goto_0

    .line 2531
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v7

    .line 2532
    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2533
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Depending on multiple versions of SDK library "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2567
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2537
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const-string v7, ":"

    .line 2540
    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 2542
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v6, "debug.pm.uses_sdk_library_default_cert_digest"

    .line 2544
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2548
    :try_start_2
    invoke-static {v6, v2}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move-object v0, v6

    .line 2554
    :catch_0
    :try_start_3
    invoke-static {p0, p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 2555
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 2556
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2567
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2558
    :cond_3
    :try_start_4
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 2560
    array-length p3, p2

    add-int/2addr p3, v5

    new-array p3, p3, [Ljava/lang/String;

    .line 2561
    aput-object v0, p3, v2

    .line 2562
    array-length v0, p2

    invoke-static {p2, v2, p3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v4, v4

    .line 2565
    invoke-interface {p1, v3, v4, v5, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2567
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2526
    :cond_4
    :goto_0
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad uses-sdk-library declaration name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " certDigest"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2567
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2568
    throw p0
.end method

.method public static parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 9

    .line 2575
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesStaticLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 2578
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 2580
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v5, 0x2

    .line 2582
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_4

    if-ltz v3, :cond_4

    if-nez v5, :cond_0

    goto :goto_0

    .line 2593
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v6

    .line 2594
    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2595
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Depending on multiple versions of static library "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2621
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2599
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const-string v6, ":"

    const-string v7, ""

    .line 2602
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2605
    sget-object v6, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2606
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v7

    const/16 v8, 0x1b

    if-lt v7, v8, :cond_3

    .line 2607
    invoke-static {p0, p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 2608
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 2609
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2621
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2611
    :cond_2
    :try_start_2
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, [Ljava/lang/String;

    .line 2614
    :cond_3
    array-length p2, v6

    add-int/2addr p2, v4

    new-array p2, p2, [Ljava/lang/String;

    .line 2615
    aput-object v5, p2, v1

    .line 2616
    array-length p3, v6

    invoke-static {v6, v1, p2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v3, v3

    .line 2619
    invoke-interface {p1, v2, v3, v4, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2621
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2588
    :cond_4
    :goto_0
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad uses-static-library declaration name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " certDigest"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2621
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2622
    throw p0
.end method

.method public static readConfigUseRoundIcon(Landroid/content/res/Resources;)V
    .locals 14

    const v0, 0x111023a

    if-eqz p0, :cond_0

    .line 3247
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    return-void

    .line 3253
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-string v1, "android"

    .line 3255
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-wide/16 v3, 0x0

    .line 3253
    invoke-interface {p0, v1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3259
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3262
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v7, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iget-object v8, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 3271
    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    .line 3272
    invoke-virtual {v1}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    const/4 v13, 0x0

    .line 3262
    invoke-virtual/range {v2 .. v13}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object p0

    .line 3275
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    return-void

    :catch_0
    move-exception p0

    .line 3257
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .locals 12

    .line 3371
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 3376
    :cond_0
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_3

    .line 3378
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3379
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v2, :cond_1

    .line 3381
    invoke-virtual {v3, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3385
    :cond_1
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8, v7}, Landroid/util/ArraySet;-><init>(I)V

    move v9, v4

    :goto_1
    if-ge v9, v7, :cond_2

    .line 3387
    const-class v10, Ljava/security/PublicKey;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const-class v11, Ljava/security/PublicKey;

    invoke-virtual {p0, v10, v11}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/PublicKey;

    .line 3388
    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3391
    :cond_2
    invoke-virtual {v3, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public static resId(ILandroid/content/res/TypedArray;)I
    .locals 1

    const/4 v0, 0x0

    .line 3320
    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    return p0
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .locals 0

    .line 3239
    sput-boolean p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    return-void
.end method

.method public static setMaxAspectRatio(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V
    .locals 7

    .line 2811
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    const v0, 0x3fee147b    # 1.86f

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2813
    :goto_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getMaxAspectRatio()F

    move-result v1

    cmpl-float v2, v1, v2

    const-string v3, "android.max_aspect"

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    .line 2818
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2819
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2820
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 2824
    :cond_2
    :goto_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object p0

    .line 2825
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    .line 2827
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 2829
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result v5

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    goto :goto_3

    .line 2838
    :cond_3
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object v5

    .line 2839
    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v5

    .line 2841
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v6

    invoke-static {v4, v6, v5}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setMaxAspectRatio(Lcom/android/server/pm/pkg/component/ParsedActivity;IF)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static string(ILandroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 0

    .line 3324
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 3342
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 3346
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    .line 3347
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3349
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3350
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3351
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-nez v2, :cond_2

    .line 3353
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 3357
    :cond_2
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 3358
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 3360
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public final convertSplitPermissions(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V
    .locals 8

    .line 3026
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 3028
    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 3029
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    .line 3030
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v5

    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 3031
    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 3034
    :cond_0
    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v3

    move v5, v1

    .line 3035
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 3036
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3037
    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3038
    invoke-interface {p1, v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/server/pm/split/SplitAssetLoader;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 10

    .line 490
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "/mnt/expand/"

    .line 493
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    const/16 v2, 0xc

    .line 494
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 495
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, v1

    .line 502
    :goto_0
    :try_start_0
    invoke-interface {p4}, Lcom/android/server/pm/split/SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 507
    invoke-virtual {v8, p2}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 509
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed adding asset path: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, -0x65

    invoke-interface {p1, p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_1
    const-string v2, "AndroidManifest.xml"

    .line 513
    invoke-virtual {v8, v0, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 515
    :try_start_2
    new-instance v4, Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v4, v8, v0, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v9

    move v6, p5

    .line 517
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 519
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 520
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " (at "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "): "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 520
    invoke-interface {p1, p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 574
    :try_start_3
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p0

    .line 525
    :cond_2
    :try_start_4
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 526
    invoke-virtual {v8}, Landroid/content/res/AssetManager;->containsAllocatedTable()Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "Targeting R+ (version 30 and above) requires the resources.arsc of installed APKs to be stored uncompressed and aligned on a 4-byte boundary"

    const-wide/32 v0, 0x7e97bf3

    .line 527
    invoke-interface {p1, p3, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p3

    .line 532
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 534
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    const/16 p3, -0x7c

    .line 533
    invoke-interface {p1, p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_3

    .line 574
    :try_start_5
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    return-object p0

    .line 538
    :cond_4
    :try_start_6
    invoke-interface {p4}, Lcom/android/server/pm/split/SplitAssetLoader;->getBaseApkAssets()Landroid/content/res/ApkAssets;

    move-result-object p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 p4, 0x0

    .line 541
    :try_start_7
    invoke-virtual {p3}, Landroid/content/res/ApkAssets;->definesOverlayable()Z

    move-result p3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_0
    move p3, p4

    :goto_1
    if-eqz p3, :cond_6

    .line 547
    :try_start_8
    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object p3

    .line 548
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, p4

    :goto_2
    if-ge v1, v0, :cond_6

    .line 550
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 551
    invoke-virtual {v8, v2}, Landroid/content/res/AssetManager;->getOverlayableMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 552
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 553
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 554
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p0, v4, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addOverlayable(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 560
    :cond_6
    invoke-interface {p0, v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    and-int/lit8 p3, p5, 0x20

    if-eqz p3, :cond_9

    .line 564
    invoke-static {p1, p0, p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p3

    .line 565
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 566
    invoke-interface {p1, p3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v9, :cond_7

    .line 574
    :try_start_9
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_7
    return-object p0

    .line 568
    :cond_8
    :try_start_a
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/SigningDetails;

    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_4

    .line 570
    :cond_9
    sget-object p3, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 573
    :goto_4
    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v9, :cond_a

    .line 574
    :try_start_b
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :cond_a
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v9, :cond_b

    .line 513
    :try_start_c
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p3

    :try_start_d
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_5
    throw p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    :catch_1
    move-exception p0

    .line 575
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to read manifest from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, -0x66

    invoke-interface {p1, p3, p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :catch_2
    move-exception p0

    .line 504
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_c

    const/4 p2, -0x2

    goto :goto_6

    :cond_c
    const/16 p2, -0x64

    .line 505
    :goto_6
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p3

    .line 504
    invoke-interface {p1, p2, p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public final parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 14

    move-object v0, p1

    move-object/from16 v6, p5

    .line 627
    invoke-static {p1, v6}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 628
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 632
    :cond_0
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 633
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 634
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 636
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected base APK, but found split "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x6a

    invoke-interface {p1, v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 643
    :cond_1
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v5, p4

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    :try_start_0
    const-string v1, "coreApp"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 645
    invoke-interface {v6, v3, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    move-object v1, p0

    .line 647
    iget-object v7, v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object v11, v13

    invoke-interface/range {v7 .. v12}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;->startParsingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, v8

    move-object v4, v13

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 650
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 651
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 657
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    .line 655
    :cond_2
    :try_start_1
    invoke-interface {p1, v8}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 658
    throw v0
.end method

.method public final parseBaseApkTag(Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 2

    .line 1015
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "compatible-screens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v0, "uses-feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v0, "uses-permission-sdk-m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "feature-group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "protected-broadcast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v0, "uses-permission-sdk-23"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v0, "supports-screens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "install-constraints"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v0, "queries"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "adopt-permissions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v0, "uses-permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "instrumentation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "key-sets"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v0, "supports-input"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v0, "uses-gl-texture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "eat-comment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v0, "permission-group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v0, "uses-sdk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "attribution"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_13
    const-string/jumbo v0, "permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_14
    const-string v0, "feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_15
    const-string/jumbo v0, "restrict-update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_16
    const-string/jumbo v0, "overlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_17
    const-string/jumbo v0, "original-package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_0

    :cond_17
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_18
    const-string/jumbo v0, "permission-tree"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_19
    const-string/jumbo v0, "uses-configuration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_0

    :cond_19
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p0, "<manifest>"

    .line 1065
    invoke-static {p0, p3, p5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1036
    :pswitch_0
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesFeature(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1038
    :pswitch_1
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1044
    :pswitch_2
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseProtectedBroadcast(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1042
    :pswitch_3
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSupportScreens(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1061
    :pswitch_4
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseInstallConstraints(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1063
    :pswitch_5
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseQueries(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1050
    :pswitch_6
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseAdoptPermissions(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1032
    :pswitch_7
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesPermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1046
    :pswitch_8
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseInstrumentation(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1019
    :pswitch_9
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseKeySets(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1056
    :pswitch_a
    invoke-static {p5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1057
    invoke-interface {p2, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1024
    :pswitch_b
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parsePermissionGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1040
    :pswitch_c
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1026
    :pswitch_d
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parsePermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1022
    :pswitch_e
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseAttribution(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1059
    :pswitch_f
    invoke-static {p6, p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseRestrictUpdateHash(ILandroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1017
    :pswitch_10
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseOverlay(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1048
    :pswitch_11
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseOriginalPackage(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1028
    :pswitch_12
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parsePermissionTree(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1034
    :pswitch_13
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesConfiguration(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x69b7c34b -> :sswitch_19
        -0x6366e724 -> :sswitch_18
        -0x420dbfb6 -> :sswitch_17
        -0x410bbbb0 -> :sswitch_16
        -0x3b806306 -> :sswitch_15
        -0x3a5d850a -> :sswitch_14
        -0x1eda3a31 -> :sswitch_13
        -0x12786f81 -> :sswitch_12
        -0xfe5a947 -> :sswitch_11
        -0xa2d06ff -> :sswitch_10
        -0x7b47f16 -> :sswitch_f
        0x71978d4 -> :sswitch_e
        0x14d5f341 -> :sswitch_d
        0x1b1d76ff -> :sswitch_c
        0x20752f6e -> :sswitch_b
        0x23c12e70 -> :sswitch_a
        0x25af09e7 -> :sswitch_9
        0x270bd766 -> :sswitch_8
        0x33694d04 -> :sswitch_7
        0x3573e73e -> :sswitch_6
        0x501aeeb1 -> :sswitch_5
        0x55ccf562 -> :sswitch_4
        0x6446f4e8 -> :sswitch_3
        0x65ae49fd -> :sswitch_2
        0x6adbbdf5 -> :sswitch_1
        0x6c5ff78e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public final parseBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 16

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v0, p3

    .line 890
    invoke-static/range {p1 .. p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSharedUser(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 891
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const/4 v1, -0x1

    const/4 v9, 0x4

    .line 895
    invoke-static {v1, v9, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v1

    invoke-interface {v8, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setInstallLocation(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v10, 0x1

    .line 897
    invoke-static {v10, v2, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setTargetSandboxVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    and-int/lit8 v1, p6, 0x8

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    move v1, v10

    goto :goto_0

    :cond_1
    move v1, v11

    .line 900
    :goto_0
    invoke-interface {v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 904
    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    const/4 v13, 0x0

    move v15, v11

    move-object v14, v13

    .line 906
    :cond_2
    :goto_1
    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v10, :cond_9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 908
    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v12, :cond_9

    :cond_3
    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    goto :goto_1

    .line 913
    :cond_4
    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v0, "application"

    .line 917
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v15, :cond_5

    const-string v0, "PackageParsing"

    const-string v1, "<manifest> has more than one <application>"

    .line 922
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-interface {v7, v13}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    .line 927
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move v15, v10

    goto :goto_2

    :cond_6
    const-string v0, "application-salescode"

    .line 931
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    .line 933
    invoke-static {v7, v8, v6, v5}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;->getReplacementForApplicationSalescode(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object v14, v0

    .line 938
    :cond_7
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object/from16 v6, p4

    move-object/from16 v5, p5

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v6, p6

    .line 941
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApkTag(Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 944
    :goto_2
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 945
    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_9
    if-eqz v14, :cond_a

    .line 951
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->useLegacyRuntimeManifest(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 952
    invoke-static {v8, v14}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;->modifyParsingPackageWithReplacement(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;)V

    :cond_a
    if-nez v15, :cond_b

    .line 956
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "<manifest> does not contain an <application> or <instrumentation>"

    const-wide/32 v1, 0x8fcab42

    .line 957
    invoke-interface {v7, v0, v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 960
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 961
    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 965
    :cond_b
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getAttributions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/pkg/component/ParsedAttributionUtils;->isCombinationValid(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, -0x65

    const-string v1, "Combination <attribution> tags are not valid"

    .line 966
    invoke-interface {v7, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 972
    :cond_c
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->declareDuplicatePermission(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, -0x6c

    const-string v1, "Found duplicate permission with a different attribute value."

    .line 973
    invoke-interface {v7, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 979
    :cond_d
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->convertCompatPermissions(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V

    move-object/from16 v0, p0

    .line 981
    invoke-virtual {v0, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->convertSplitPermissions(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V

    .line 983
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_NAL_GET_APP_LIST:Z

    if-eqz v0, :cond_10

    .line 985
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.cts.appthataccesseslocation"

    .line 986
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "android.permission.cts.appthatrequestcustompermission"

    .line 987
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "com.google.android.sdksandbox"

    .line 988
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "android.appenumeration.queries.nothing.hasprovider"

    .line 989
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "android.appenumeration.queries.nothing.haspermission"

    .line 990
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3

    :cond_e
    move v10, v11

    :cond_f
    :goto_3
    if-nez v10, :cond_10

    .line 991
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "com.samsung.android.permission.GET_APP_LIST"

    .line 992
    invoke-interface {v8, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 999
    :cond_10
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v9, :cond_11

    .line 1000
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isSmallScreensSupported()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1001
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isNormalScreensSupported()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1002
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isLargeScreensSupported()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1003
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isExtraLargeScreensSupported()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1004
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1005
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isAnyDensity()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1006
    :cond_11
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->adjustPackageToBeUnresizeableAndUnpipable(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V

    .line 1009
    :cond_12
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public final parseBaseAppBasicFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)V
    .locals 6

    .line 2288
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result p0

    const/16 v0, 0x11

    const/4 v1, 0x1

    .line 2293
    invoke-static {v1, v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setBackupAllowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 v0, 0x5

    .line 2294
    invoke-static {v1, v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setClearUserDataAllowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v0, 0x36

    .line 2295
    invoke-static {v1, v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v0, 0x3b

    .line 2296
    invoke-static {v1, v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAllowNativeHeapPointerTagging(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v0, 0x9

    .line 2297
    invoke-static {v1, v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v0, 0x22

    .line 2298
    invoke-static {v1, v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setExtractNativeLibrariesRequested(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 v0, 0x7

    .line 2299
    invoke-static {v1, v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setDeclaredHavingCode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v2, 0xe

    .line 2301
    invoke-static {v0, v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setTaskReparentingAllowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x2f

    .line 2302
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSaveStateDisallowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x3a

    .line 2303
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setCrossProfile(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0xa

    .line 2304
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setDebuggable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x26

    .line 2305
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x27

    .line 2306
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x39

    .line 2307
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setForceQueryable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x1f

    .line 2308
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setGame(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x32

    .line 2309
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setUserDataFragile(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x18

    .line 2310
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLargeHeap(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x21

    .line 2311
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMultiArch(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x3d

    .line 2312
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setPreserveLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x1b

    .line 2313
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRequiredForAllUsers(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x1a

    .line 2314
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRtlSupported(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0xf

    .line 2315
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setTestOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x35

    .line 2316
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setUseEmbeddedDex(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x31

    .line 2317
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setNonSdkApiRequested(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x14

    .line 2318
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setVmSafeMode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x3c

    .line 2319
    invoke-static {v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(ILandroid/content/res/TypedArray;)I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAutoRevokePermissions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x45

    .line 2320
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAttributionsAreUserVisible(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x46

    .line 2321
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setResetEnabledSettingsOnAppDataCleared(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x49

    .line 2324
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOnBackInvokedCallbackEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x1d

    if-lt p0, v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    const/16 v5, 0x37

    .line 2326
    invoke-static {v4, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAllowAudioPlaybackCapture(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    if-lt p0, v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const/16 v4, 0x17

    .line 2327
    invoke-static {v2, v4, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setHardwareAccelerated(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    if-ge p0, v3, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    const/16 v4, 0x38

    .line 2328
    invoke-static {v2, v4, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRequestLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v2, 0x1c

    if-ge p0, v2, :cond_3

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    const/16 p0, 0x24

    .line 2329
    invoke-static {v1, p0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setCleartextTrafficAllowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x19

    .line 2331
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(ILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setUiOptions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/4 p1, -0x1

    const/16 v1, 0x2b

    .line 2333
    invoke-static {p1, v1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setCategory(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x2c

    .line 2335
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->aFloat(ILandroid/content/res/TypedArray;)F

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMaxAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x33

    .line 2336
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->aFloat(ILandroid/content/res/TypedArray;)F

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMinAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x1e

    .line 2338
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setBannerResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0xd

    .line 2339
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setDescriptionResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/4 p1, 0x2

    .line 2340
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setIconResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x16

    .line 2341
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLogoResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x29

    .line 2342
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setNetworkSecurityConfigResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x2a

    .line 2343
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRoundIconResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2344
    invoke-static {v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setThemeResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x42

    .line 2346
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p1

    .line 2345
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setDataExtractionRulesResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x47

    .line 2347
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLocaleConfigResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x2e

    .line 2349
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setClassLoaderName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2350
    invoke-static {v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRequiredAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2351
    invoke-static {v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRestrictedAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x34

    .line 2352
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setZygotePreloadName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/4 p1, 0x6

    .line 2354
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    return-void
.end method

.method public final parseBaseAppChildTag(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6

    .line 2367
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "uses-package"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v0, "profileable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v0, "uses-static-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "static-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "processes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "meta-data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "uses-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_9
    const-string/jumbo v0, "uses-sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_a
    const-string/jumbo v0, "uses-native-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_b
    const-string/jumbo v0, "sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p0, "<application>"

    .line 2409
    invoke-static {p0, p3, p5, p1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :pswitch_0
    const/4 p0, 0x0

    .line 2405
    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2407
    :pswitch_1
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseProfileable(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2391
    :pswitch_2
    invoke-static {p3, p4, p5, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseLibrary(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2395
    :pswitch_3
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :pswitch_4
    const/4 v1, 0x0

    const-string v4, "<property>"

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    move-object v5, p1

    .line 2380
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 2382
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2383
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager$Property;

    invoke-interface {p3, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_c
    return-object p0

    .line 2389
    :pswitch_5
    invoke-static {p3, p4, p5, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseStaticLibrary(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2401
    :pswitch_6
    iget-object v4, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    move-object v0, p1

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseProcesses(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :pswitch_7
    const/4 v1, 0x0

    const-string v4, "<meta-data>"

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    move-object v5, p1

    .line 2373
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 2375
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 2376
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager$Property;

    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager$Property;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_d
    return-object p0

    .line 2397
    :pswitch_8
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2393
    :pswitch_9
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2399
    :pswitch_a
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2387
    :pswitch_b
    invoke-static {p3, p4, p5, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSdkLibrary(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b7c15d8 -> :sswitch_b
        -0x5fe67eda -> :sswitch_a
        -0x5aaa6a59 -> :sswitch_9
        -0x50de9846 -> :sswitch_8
        -0x4284098e -> :sswitch_7
        -0x4140b4a3 -> :sswitch_6
        -0x3efb77a4 -> :sswitch_5
        -0x3b32222b -> :sswitch_4
        0x88b87d -> :sswitch_3
        0x9e824bb -> :sswitch_2
        0xa9d2283 -> :sswitch_1
        0x751e7745 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parseBaseApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 1901
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1902
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v1

    .line 1904
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v11, v12, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    if-nez v8, :cond_0

    :try_start_0
    const-string v0, "<application> does not contain any attributes"

    .line 1910
    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2117
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_0
    const/4 v13, 0x3

    const/4 v14, 0x0

    .line 1913
    :try_start_1
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "Empty class name in package "

    if-eqz v2, :cond_3

    .line 1916
    :try_start_2
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1917
    invoke-static {v4, v2}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1918
    sget-object v5, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "<application> invalid android:name"

    .line 1919
    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2117
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_1
    if-nez v2, :cond_2

    .line 1921
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2117
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1924
    :cond_2
    :try_start_4
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setApplicationClassName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_3
    const/4 v15, 0x1

    .line 1927
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1929
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-interface {v10, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLabelResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1930
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-nez v4, :cond_4

    .line 1931
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1935
    :cond_4
    invoke-virtual {v0, v10, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseAppBasicFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)V

    const/4 v6, 0x4

    const/16 v2, 0x400

    .line 1937
    invoke-static {v2, v6, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1940
    invoke-static {v7, v4}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2117
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1947
    :cond_5
    :try_start_5
    invoke-interface {v10, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1950
    :cond_6
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isBackupAllowed()Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v4, 0x10

    .line 1954
    invoke-static {v2, v4, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1957
    invoke-static {v7, v4}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    .line 1959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2117
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1967
    :cond_7
    :try_start_6
    invoke-interface {v10, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setBackupAgentName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    const/16 v5, 0x12

    .line 1968
    invoke-static {v15, v5, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setKillAfterRestoreAllowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    const/16 v5, 0x15

    .line 1970
    invoke-static {v14, v5, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRestoreAnyVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    const/16 v5, 0x20

    .line 1972
    invoke-static {v14, v5, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setFullBackupOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    const/16 v5, 0x28

    .line 1974
    invoke-static {v14, v5, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setBackupInForeground(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_8
    const/16 v4, 0x23

    .line 1978
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 1983
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-nez v5, :cond_a

    .line 1991
    iget v4, v4, Landroid/util/TypedValue;->data:I

    if-nez v4, :cond_9

    const/4 v5, -0x1

    goto :goto_0

    :cond_9
    move v5, v14

    .line 1994
    :cond_a
    :goto_0
    invoke-interface {v10, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setFullBackupContentResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_b
    const/16 v4, 0x8

    .line 2001
    invoke-virtual {v8, v4, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_e

    const/16 v5, 0x2d

    .line 2003
    invoke-virtual {v8, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 2005
    iget-object v6, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-interface {v6, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_1

    :cond_c
    move v5, v14

    goto :goto_2

    :cond_d
    :goto_1
    move v5, v15

    :goto_2
    invoke-interface {v10, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_e
    const/16 v5, 0x25

    .line 2008
    invoke-virtual {v8, v5}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2009
    invoke-virtual {v8, v5, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v10, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_4

    :cond_f
    const/16 v5, 0x18

    if-lt v1, v5, :cond_10

    move v5, v15

    goto :goto_3

    :cond_10
    move v5, v14

    .line 2012
    :goto_3
    invoke-interface {v10, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setResizeableActivityViaSdkVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :goto_4
    const/16 v5, 0xc

    if-lt v1, v4, :cond_11

    .line 2018
    invoke-virtual {v8, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 2025
    :cond_11
    invoke-virtual {v8, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2029
    :goto_5
    invoke-static {v7, v7, v5, v9}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 2031
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2032
    invoke-interface {v9, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2117
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 2035
    :cond_12
    :try_start_7
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v10, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    const/16 v5, 0x30

    .line 2036
    invoke-virtual {v8, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 2039
    invoke-static {v7, v5}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_13

    .line 2041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2117
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 2044
    :cond_13
    :try_start_8
    invoke-interface {v10, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAppComponentFactory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_14
    const/16 v3, 0xb

    if-lt v1, v4, :cond_15

    .line 2049
    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 2056
    :cond_15
    invoke-virtual {v8, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    move-object v3, v1

    const/4 v2, 0x0

    .line 2059
    iget-object v5, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    move-object v1, v7

    move/from16 v4, p5

    const/4 v6, -0x1

    move v13, v6

    const/16 v16, 0x4

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2061
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2062
    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2117
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 2065
    :cond_16
    :try_start_9
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2066
    invoke-interface {v10, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2068
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isSaveStateDisallowed()Z

    move-result v2

    if-eqz v2, :cond_17

    if-eqz v1, :cond_17

    .line 2071
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v0, "cantSaveState applications can not use custom processes"

    .line 2072
    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2117
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 2077
    :cond_17
    :try_start_a
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getClassLoaderName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 2079
    invoke-static {v1}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class loader name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2117
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_18
    const/16 v1, 0x3e

    .line 2083
    :try_start_b
    invoke-virtual {v8, v1, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-interface {v10, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setGwpAsanMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    const/16 v1, 0x40

    .line 2084
    invoke-virtual {v8, v1, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-interface {v10, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMemtagMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    const/16 v1, 0x41

    .line 2085
    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2086
    invoke-virtual {v8, v1, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_19

    move v1, v15

    goto :goto_7

    :cond_19
    move v1, v14

    .line 2088
    :goto_7
    invoke-interface {v10, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setNativeHeapZeroInitialized(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_1a
    const/16 v1, 0x43

    .line 2091
    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2093
    invoke-virtual {v8, v1, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v10, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_1b
    const/16 v1, 0x44

    .line 2097
    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2099
    invoke-virtual {v8, v1, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-interface {v10, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRequestForegroundServiceExemption(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_1c
    const/16 v1, 0x48

    .line 2104
    invoke-static {v8, v11, v1, v9}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->parseKnownActivityEmbeddingCerts(Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2107
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2108
    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2117
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 2111
    :cond_1d
    :try_start_c
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_1e

    .line 2113
    invoke-interface {v10, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2117
    :cond_1e
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 2123
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    move/from16 v18, v14

    move/from16 v19, v18

    move/from16 v20, v19

    .line 2125
    :goto_8
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v15, :cond_33

    const/4 v7, 0x3

    if-ne v1, v7, :cond_1f

    .line 2127
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v8, :cond_33

    :cond_1f
    const/4 v6, 0x2

    if-eq v1, v6, :cond_20

    goto :goto_8

    .line 2133
    :cond_20
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2135
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_9
    move v6, v13

    goto/16 :goto_a

    :sswitch_0
    const-string v1, "activity-salescode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_9

    :cond_21
    const/4 v6, 0x7

    goto :goto_a

    :sswitch_1
    const-string/jumbo v1, "service"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_9

    :cond_22
    const/4 v6, 0x6

    goto :goto_a

    :sswitch_2
    const-string/jumbo v1, "provider-salescode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_9

    :cond_23
    const/4 v6, 0x5

    goto :goto_a

    :sswitch_3
    const-string v1, "activity-alias"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_9

    :cond_24
    move/from16 v6, v16

    goto :goto_a

    :sswitch_4
    const-string/jumbo v1, "receiver"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_9

    :cond_25
    move v6, v7

    goto :goto_a

    :sswitch_5
    const-string/jumbo v1, "provider"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_9

    :sswitch_6
    const-string v1, "apex-system-service"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_9

    :cond_26
    move v6, v15

    goto :goto_a

    :sswitch_7
    const-string v1, "activity"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_9

    :cond_27
    move v6, v14

    :cond_28
    :goto_a
    packed-switch v6, :pswitch_data_0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v17, v7

    move/from16 v7, p5

    .line 2227
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseAppChildTag(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    :goto_b
    move/from16 v21, v8

    goto/16 :goto_11

    :pswitch_0
    move/from16 v17, v7

    .line 2197
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->useLegacyRuntimeManifest(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2199
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    const-string v6, "<activity-salescode>"

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    .line 2198
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;->parseOverlayComponentAndModify(Ljava/lang/String;Ljava/util/List;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;)V

    .line 2202
    :cond_29
    new-instance v1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;-><init>()V

    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    goto :goto_b

    :pswitch_1
    move/from16 v17, v7

    .line 2159
    iget-object v1, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v6, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v21, v8

    move-object/from16 v8, p1

    .line 2160
    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/pkg/component/ParsedServiceUtils;->parseService([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2163
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2164
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 2165
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result v3

    if-eqz v3, :cond_2a

    move v3, v15

    goto :goto_c

    :cond_2a
    move v3, v14

    :goto_c
    or-int v20, v20, v3

    .line 2166
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto/16 :goto_11

    :pswitch_2
    move/from16 v17, v7

    move/from16 v21, v8

    .line 2206
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->useLegacyRuntimeManifest(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2208
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getProviders()Ljava/util/List;

    move-result-object v2

    const-string v6, "<provider-salescode>"

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    .line 2207
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;->parseOverlayComponentAndModify(Ljava/lang/String;Ljava/util/List;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;)V

    .line 2211
    :cond_2b
    new-instance v1, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    invoke-direct {v1}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;-><init>()V

    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    goto/16 :goto_11

    :pswitch_3
    move/from16 v17, v7

    move/from16 v21, v8

    .line 2183
    sget-boolean v4, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    const/4 v5, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityAlias(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2186
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2187
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 2188
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result v3

    if-eqz v3, :cond_2c

    move v3, v15

    goto :goto_d

    :cond_2c
    move v3, v14

    :goto_d
    or-int v18, v18, v3

    .line 2189
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto/16 :goto_11

    :pswitch_4
    move/from16 v17, v7

    move/from16 v21, v8

    move/from16 v22, v14

    goto :goto_e

    :pswitch_5
    move/from16 v17, v7

    move/from16 v21, v8

    .line 2172
    iget-object v1, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v6, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v8, p1

    .line 2173
    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/pkg/component/ParsedProviderUtils;->parseProvider([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2176
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2177
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedProvider;

    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto/16 :goto_11

    :pswitch_6
    move/from16 v17, v7

    move/from16 v21, v8

    .line 2216
    invoke-static {v11, v12, v9}, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceUtils;->parseApexSystemService(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2218
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2220
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;

    .line 2221
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addApexSystemService(Lcom/android/server/pm/pkg/component/ParsedApexSystemService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_11

    :pswitch_7
    move/from16 v17, v7

    move/from16 v21, v8

    move/from16 v22, v15

    .line 2140
    :goto_e
    iget-object v1, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v6, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v8, p1

    .line 2141
    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityOrReceiver([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2145
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2146
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    if-eqz v22, :cond_2e

    .line 2148
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result v3

    if-eqz v3, :cond_2d

    move v3, v15

    goto :goto_f

    :cond_2d
    move v3, v14

    :goto_f
    or-int v3, v18, v3

    .line 2149
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move/from16 v18, v3

    goto :goto_11

    .line 2151
    :cond_2e
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result v3

    if-eqz v3, :cond_2f

    move v3, v15

    goto :goto_10

    :cond_2f
    move v3, v14

    :goto_10
    or-int v3, v19, v3

    .line 2152
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move/from16 v19, v3

    .line 2231
    :cond_30
    :goto_11
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2232
    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2234
    :cond_31
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->hasTooManyComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v0, "Total number of components has exceeded the maximum number: 30000"

    .line 2235
    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_32
    move/from16 v8, v21

    goto/16 :goto_8

    .line 2240
    :cond_33
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->useLegacyRuntimeManifest(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 2241
    invoke-static/range {p2 .. p3}, Lcom/samsung/android/server/pm/runtimemanifest/RuntimeManifestOverlayUtils;->applyRuntimeManifestIfNeeded(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;)V

    .line 2244
    :cond_34
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 2245
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v1

    .line 2244
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 2248
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->generateAppDetailsHiddenActivity(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2249
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2254
    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2257
    :cond_35
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedActivity;

    invoke-interface {v10, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_36
    if-eqz v18, :cond_37

    .line 2261
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->sortActivities()Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_37
    if-eqz v19, :cond_38

    .line 2264
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->sortReceivers()Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_38
    if-eqz v20, :cond_39

    .line 2267
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->sortServices()Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2272
    :cond_39
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->setMaxAspectRatio(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V

    .line 2273
    invoke-virtual {v0, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->setMinAspectRatio(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V

    .line 2274
    invoke-virtual {v0, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->setSupportsSizeChanges(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V

    .line 2276
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->hasDomainURLs(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z

    move-result v0

    invoke-interface {v10, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setHasDomainUrls(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2278
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2117
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 2118
    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_7
        -0x5db446de -> :sswitch_6
        -0x3adbfa0f -> :sswitch_5
        -0x30341611 -> :sswitch_4
        0x2f1ad612 -> :sswitch_3
        0x36e4801d -> :sswitch_2
        0x7643c6b5 -> :sswitch_1
        0x76951fbb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parseClusterPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 13

    move-object v7, p1

    move/from16 v0, p3

    and-int/lit16 v1, v0, 0x200

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x200

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, p2

    move v1, v8

    .line 395
    :goto_0
    invoke-static {p1, p2, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 396
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 400
    :cond_1
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/pm/parsing/PackageLite;

    .line 404
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->isIsolatedSplits()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 406
    :try_start_0
    invoke-static {v9}, Landroid/content/pm/split/SplitDependencyLoader;->createDependenciesFromPackage(Landroid/content/pm/parsing/PackageLite;)Landroid/util/SparseArray;

    move-result-object v1

    .line 407
    new-instance v2, Lcom/android/server/pm/split/SplitAssetDependencyLoader;

    invoke-direct {v2, v9, v1, v0}, Lcom/android/server/pm/split/SplitAssetDependencyLoader;-><init>(Landroid/content/pm/parsing/PackageLite;Landroid/util/SparseArray;I)V
    :try_end_0
    .catch Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v1, -0x65

    .line 409
    invoke-virtual {v0}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 412
    :cond_2
    new-instance v2, Lcom/android/server/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v2, v9, v0}, Lcom/android/server/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/parsing/PackageLite;I)V

    const/4 v1, 0x0

    :goto_1
    move-object v10, v1

    move-object v11, v2

    .line 416
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, v11

    move/from16 v6, p3

    .line 417
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/server/pm/split/SplitAssetLoader;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 419
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 420
    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    .line 423
    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 424
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 426
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitRevisionCodes()[I

    move-result-object v3

    .line 425
    invoke-interface {v12, v1, v2, v3, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 431
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v1

    array-length v10, v1

    :goto_2
    if-ge v8, v10, :cond_5

    .line 434
    invoke-interface {v11, v8}, Lcom/android/server/pm/split/SplitAssetLoader;->getSplitAssetManager(I)Landroid/content/res/AssetManager;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, v12

    move v4, v8

    move/from16 v6, p3

    .line 436
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;ILandroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 437
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 438
    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 449
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 443
    :cond_5
    :try_start_3
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->isUse32bitAbi()Z

    move-result v0

    invoke-interface {v12, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->set32BitAbiPreferred(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 444
    invoke-interface {p1, v12}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 449
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 446
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_6

    const/4 v1, -0x2

    goto :goto_3

    :cond_6
    const/16 v1, -0x64

    .line 447
    :goto_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 446
    invoke-interface {p1, v1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 449
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :goto_4
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 450
    throw v0
.end method

.method public final parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I
    .locals 0

    .line 1291
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1293
    iget p1, p0, Landroid/util/TypedValue;->type:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_0

    const/16 p2, 0x1f

    if-gt p1, p2, :cond_0

    .line 1295
    iget p3, p0, Landroid/util/TypedValue;->data:I

    :cond_0
    return p3
.end method

.method public final parseMonolithicPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 8

    .line 462
    invoke-static {p1, p2, p3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 463
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 467
    :cond_0
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/PackageLite;

    .line 468
    new-instance v7, Lcom/android/server/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v7, v0, p3}, Lcom/android/server/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/parsing/PackageLite;I)V

    .line 472
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v7

    move v6, p3

    .line 470
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/server/pm/split/SplitAssetLoader;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 474
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 475
    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    .line 478
    :cond_1
    :try_start_1
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 479
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isUse32bitAbi()Z

    move-result p3

    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->set32BitAbiPreferred(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 478
    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 481
    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to get path: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, -0x66

    invoke-interface {p1, p3, p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 484
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :goto_0
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 485
    throw p0
.end method

.method public parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1

    .line 372
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseClusterPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 375
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseMonolithicPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public final parseRequiredFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 0

    .line 1443
    sget-object p0, Lcom/android/internal/R$styleable;->AndroidManifestRequiredFeature:[I

    invoke-virtual {p2, p3, p0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p2, 0x0

    .line 1446
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1448
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p2, "Feature name is missing from <required-feature> tag."

    .line 1449
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    goto :goto_0

    .line 1450
    :cond_0
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1452
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1453
    throw p1
.end method

.method public final parseRequiredNotFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 0

    .line 1458
    sget-object p0, Lcom/android/internal/R$styleable;->AndroidManifestRequiredNotFeature:[I

    invoke-virtual {p2, p3, p0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p2, 0x0

    .line 1461
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1463
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p2, "Feature name is missing from <required-not-feature> tag."

    .line 1464
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    goto :goto_0

    .line 1465
    :cond_0
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1467
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1468
    throw p1
.end method

.method public final parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;ILandroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 10

    .line 582
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p3

    .line 587
    invoke-virtual {p4, v0}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 589
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed adding asset path: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, -0x65

    invoke-interface {p1, p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    const-string v2, "AndroidManifest.xml"

    .line 592
    invoke-virtual {p4, v1, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :try_start_1
    new-instance v6, Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v3, 0x0

    invoke-direct {v6, p4, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, v1

    move v8, p5

    move v9, p3

    .line 595
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 597
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 598
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " (at "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "): "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 598
    invoke-interface {p1, p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    .line 592
    :try_start_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 605
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to read manifest from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, -0x66

    invoke-interface {p1, p3, p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public final parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6

    .line 675
    invoke-static {p1, p4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 676
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 677
    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 684
    :cond_0
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    .line 685
    :cond_1
    :goto_0
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    add-int/lit8 v4, v0, 0x1

    .line 686
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-lt v4, v5, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    goto :goto_0

    .line 691
    :cond_2
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "application"

    .line 692
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    const-string v2, "PackageParsing"

    const-string v3, "<manifest> has more than one <application>"

    .line 697
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 698
    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    goto :goto_1

    .line 702
    :cond_3
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move v1, v3

    goto :goto_1

    :cond_4
    const-string v2, "<manifest>"

    .line 705
    invoke-static {v2, p2, p4, p1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 708
    :goto_1
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 709
    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez v1, :cond_6

    const-string p0, "<manifest> does not contain an <application>"

    const-wide/32 p3, 0x8fcab42

    .line 714
    invoke-interface {p1, p0, p3, p4}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 716
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 717
    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 721
    :cond_6
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public final parseSplitApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v1, p6

    .line 734
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual {v11, v12, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v13, 0x1

    .line 736
    :try_start_0
    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-interface {v10, v1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSplitHasCode(IZ)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    const/16 v3, 0x2e

    .line 739
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 741
    invoke-static {v3}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 745
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid class loader name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 743
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v10, v1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 755
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    aget-object v14, v2, v1

    .line 757
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 759
    :cond_2
    :goto_1
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v13, :cond_d

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 761
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v15, :cond_d

    :cond_3
    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    goto :goto_1

    .line 769
    :cond_4
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 771
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_2
    move v2, v6

    goto :goto_3

    :sswitch_0
    const-string/jumbo v1, "service"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x4

    goto :goto_3

    :sswitch_1
    const-string v1, "activity-alias"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    :sswitch_2
    const-string/jumbo v1, "receiver"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_3

    :sswitch_3
    const-string/jumbo v1, "provider"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    move v2, v13

    goto :goto_3

    :sswitch_4
    const-string v1, "activity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    move v2, v5

    :cond_9
    :goto_3
    packed-switch v2, :pswitch_data_0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 824
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSplitBaseAppChildTags(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    goto/16 :goto_5

    .line 791
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v6, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v14

    move-object/from16 v8, p1

    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/pkg/component/ParsedServiceUtils;->parseService([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 794
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 795
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 796
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto/16 :goto_5

    .line 813
    :pswitch_1
    sget-boolean v4, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v5, v14

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityAlias(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 815
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 816
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 817
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_5

    :pswitch_2
    move/from16 v16, v5

    goto :goto_4

    .line 802
    :pswitch_3
    iget-object v1, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v6, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v14

    move-object/from16 v8, p1

    .line 803
    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/pkg/component/ParsedProviderUtils;->parseProvider([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 805
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 806
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 807
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_5

    :pswitch_4
    move/from16 v16, v13

    .line 776
    :goto_4
    iget-object v1, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v6, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v14

    move-object/from16 v8, p1

    .line 777
    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityOrReceiver([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 779
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 780
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    if-eqz v16, :cond_a

    .line 782
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_5

    .line 784
    :cond_a
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 828
    :cond_b
    :goto_5
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 829
    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 832
    :cond_c
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->hasTooManyComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Total number of components has exceeded the maximum number: 30000"

    .line 833
    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 837
    :cond_d
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 748
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 749
    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_4
        -0x3adbfa0f -> :sswitch_3
        -0x30341611 -> :sswitch_2
        0x2f1ad612 -> :sswitch_1
        0x7643c6b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parseSplitBaseAppChildTags(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6

    .line 852
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo p0, "uses-package"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const-string/jumbo p0, "uses-static-library"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string/jumbo p0, "property"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string/jumbo p0, "meta-data"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo p0, "uses-library"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const-string/jumbo p0, "uses-sdk-library"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    const-string/jumbo p0, "uses-native-library"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p0, "<application>"

    .line 883
    invoke-static {p0, p3, p5, p1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :pswitch_0
    const/4 p0, 0x0

    .line 881
    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 873
    :pswitch_1
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/4 v1, 0x0

    const-string v4, "<property>"

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    move-object v5, p1

    .line 864
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 866
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 867
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager$Property;

    invoke-interface {p3, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_7
    return-object p0

    :pswitch_3
    const/4 v1, 0x0

    const-string v4, "<meta-data>"

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    move-object v5, p1

    .line 857
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 859
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 860
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager$Property;

    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager$Property;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_8
    return-object p0

    .line 875
    :pswitch_4
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 871
    :pswitch_5
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 877
    :pswitch_6
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5fe67eda -> :sswitch_6
        -0x5aaa6a59 -> :sswitch_5
        -0x50de9846 -> :sswitch_4
        -0x4284098e -> :sswitch_3
        -0x3b32222b -> :sswitch_2
        0x88b87d -> :sswitch_1
        0x751e7745 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parseUsesPermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1304
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v6, 0x0

    .line 1308
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v7

    .line 1310
    invoke-static {v7}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x200

    if-le v8, v9, :cond_0

    const-string v0, "The name in the <uses-permission> is greater than 512"

    const/16 v2, -0x6c

    .line 1311
    invoke-interface {v1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1437
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_0
    const/high16 v8, -0x80000000

    const/4 v9, 0x1

    .line 1316
    :try_start_1
    invoke-virtual {v0, v5, v9, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I

    move-result v8

    const/4 v10, 0x2

    const v11, 0x7fffffff

    .line 1320
    invoke-virtual {v0, v5, v10, v11}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I

    move-result v10

    .line 1324
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    const/4 v12, 0x3

    .line 1325
    invoke-virtual {v5, v12, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 1329
    invoke-virtual {v11, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1332
    :cond_1
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    const/4 v14, 0x4

    .line 1333
    invoke-virtual {v5, v14, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 1338
    invoke-virtual {v13, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v15, 0x5

    .line 1341
    invoke-virtual {v5, v15, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 1345
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 1347
    :goto_0
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    if-eq v14, v9, :cond_d

    if-ne v14, v12, :cond_3

    .line 1349
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_d

    :cond_3
    if-eq v14, v12, :cond_c

    const/4 v9, 0x4

    if-ne v14, v9, :cond_4

    goto/16 :goto_4

    .line 1355
    :cond_4
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v12, 0x341a4cce

    if-eq v9, v12, :cond_6

    const v12, 0x64ee7ac8

    if-eq v9, v12, :cond_5

    goto :goto_1

    :cond_5
    const-string/jumbo v9, "required-feature"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    const-string/jumbo v9, "required-not-feature"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v9, -0x1

    :goto_2
    if-eqz v9, :cond_9

    const/4 v12, 0x1

    if-eq v9, v12, :cond_8

    const-string v9, "<uses-permission>"

    .line 1371
    invoke-static {v9, v2, v4, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    goto :goto_3

    .line 1364
    :cond_8
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseRequiredNotFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    .line 1365
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1366
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1357
    :cond_9
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseRequiredFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    .line 1358
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1359
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1375
    :cond_a
    :goto_3
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1376
    invoke-interface {v1, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1437
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_b
    const/4 v9, 0x1

    const/4 v12, 0x3

    goto/16 :goto_0

    :cond_c
    :goto_4
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1381
    :cond_d
    :try_start_2
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_e

    .line 1437
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    .line 1387
    :cond_e
    :try_start_3
    sget v6, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-lt v6, v8, :cond_19

    if-le v6, v10, :cond_f

    goto/16 :goto_9

    .line 1392
    :cond_f
    iget-object v6, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

    if-eqz v6, :cond_13

    .line 1395
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    :goto_5
    if-ltz v6, :cond_11

    .line 1396
    iget-object v8, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-virtual {v11, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v8, :cond_10

    .line 1437
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_10
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 1403
    :cond_11
    :try_start_4
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    :goto_6
    if-ltz v6, :cond_14

    .line 1404
    iget-object v9, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-virtual {v13, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_12

    .line 1437
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_12
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_13
    const/4 v8, 0x1

    .line 1413
    :cond_14
    :try_start_5
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getUsesPermissions()Ljava/util/List;

    move-result-object v0

    .line 1414
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v6, :cond_17

    .line 1416
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;

    .line 1417
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 1418
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;->getUsesPermissionFlags()I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v6, " at: "

    const-string v9, " in package: "

    if-eq v0, v15, :cond_15

    .line 1419
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflicting uses-permissions flags: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1420
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1419
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1437
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_15
    :try_start_7
    const-string v0, "PackageParsing"

    .line 1423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1423
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    goto :goto_8

    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_17
    const/4 v6, 0x0

    :goto_8
    if-nez v6, :cond_18

    .line 1433
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;

    invoke-direct {v0, v7, v15}, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1437
    :cond_18
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_19
    :goto_9
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1438
    throw v0
.end method

.method public final setMinAspectRatio(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V
    .locals 5

    .line 2852
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getMinAspectRatio()F

    move-result p0

    .line 2854
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object p1

    .line 2855
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2857
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 2858
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 2859
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v3

    invoke-static {v2, v3, p0}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setMinAspectRatio(Lcom/android/server/pm/pkg/component/ParsedActivity;IF)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setSupportsSizeChanges(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V
    .locals 7

    .line 2866
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "android.supports_size_changes"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 2868
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    .line 2870
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object p1

    .line 2871
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_3

    .line 2873
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedActivity;

    if-nez p0, :cond_1

    .line 2874
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object v6

    .line 2875
    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2876
    :cond_1
    invoke-static {v5, v1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setSupportsSizeChanges(Lcom/android/server/pm/pkg/component/ParsedActivity;Z)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
