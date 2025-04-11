.class final Lcom/android/server/pm/ScanRequest;
.super Ljava/lang/Object;
.source "ScanRequest.java"


# instance fields
.field public final mCpuAbiOverride:Ljava/lang/String;

.field public final mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final mIsPlatformPackage:Z

.field public final mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;

.field public final mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

.field public final mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final mParseFlags:I

.field public final mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

.field public final mPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final mRealPkgName:Ljava/lang/String;

.field public final mScanFlags:I

.field public final mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 77
    iput-object p3, p0, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 78
    iput-object p4, p0, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 79
    iput-object p2, p0, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 80
    iput-object p5, p0, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Lcom/android/server/pm/PackageSetting;

    invoke-direct {p1, p4}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 82
    iput-object p6, p0, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 83
    iput-object p7, p0, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 84
    iput-object p8, p0, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    .line 85
    iput p9, p0, Lcom/android/server/pm/ScanRequest;->mParseFlags:I

    .line 86
    iput p10, p0, Lcom/android/server/pm/ScanRequest;->mScanFlags:I

    .line 87
    iput-boolean p11, p0, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    .line 88
    iput-object p12, p0, Lcom/android/server/pm/ScanRequest;->mUser:Landroid/os/UserHandle;

    .line 89
    iput-object p13, p0, Lcom/android/server/pm/ScanRequest;->mCpuAbiOverride:Ljava/lang/String;

    return-void
.end method
