.class public final Lcom/android/server/asks/ASKSManagerService$CURPARAM;
.super Ljava/lang/Object;
.source "ASKSManagerService.java"


# instance fields
.field public baseCodePath:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public downloadUrl:Ljava/lang/String;

.field public hashDomain:Ljava/lang/String;

.field public initiatingPackageName:Ljava/lang/String;

.field public originatingPackageName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public permList:[Ljava/lang/String;

.field public pkgNameHash:Ljava/lang/String;

.field public pkgSigHash:Ljava/lang/String;

.field public referralUrl:Ljava/lang/String;

.field public saReportValue:Ljava/lang/String;

.field public sdkVersion:I

.field public servicePermList:[Ljava/lang/String;

.field public sigHashValue:Ljava/lang/String;

.field public signatures:[Landroid/content/pm/Signature;

.field public userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2761
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->permList:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->servicePermList:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->baseCodePath:Ljava/lang/String;

    .line 2762
    iput-object p5, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->signatures:[Landroid/content/pm/Signature;

    iput-object p6, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    .line 2763
    iput p8, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sdkVersion:I

    iput-object p9, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->referralUrl:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->downloadUrl:Ljava/lang/String;

    iput p11, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->userId:I

    return-void
.end method
