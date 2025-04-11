.class public final Lcom/android/server/asks/ASKSManagerService$CURSTATUS;
.super Ljava/lang/Object;
.source "ASKSManagerService.java"


# instance fields
.field public hasReqInstallPEM:Z

.field public isAllowSelfUpdate:Z

.field public isBlockSelfUpdateWithPEM:Z

.field public isCheckRequestInstallPEM:Z

.field public isCheckZipFormat:Z

.field public isDevDevice:Z

.field public isHitTargetDomain:Z

.field public isIP:Z

.field public isLimitOnlyKorMCC:Z

.field public isLocAccessibilityCase:Z

.field public isLocUrlCase:Z

.field public isLocWebCase:Z

.field public isLocZipCase:Z

.field public isTablet:Z

.field public isTabletExcepted:Z

.field public isValidZip:Z

.field public target_model:Ljava/lang/String;

.field public totalList:I

.field public totalListString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocUrlCase:Z

    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocWebCase:Z

    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isIP:Z

    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isDevDevice:Z

    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isTablet:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isValidZip:Z

    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isCheckZipFormat:Z

    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isAllowSelfUpdate:Z

    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isBlockSelfUpdateWithPEM:Z

    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLimitOnlyKorMCC:Z

    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isTabletExcepted:Z

    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isHitTargetDomain:Z

    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isCheckRequestInstallPEM:Z

    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->target_model:Ljava/lang/String;

    return-void
.end method
