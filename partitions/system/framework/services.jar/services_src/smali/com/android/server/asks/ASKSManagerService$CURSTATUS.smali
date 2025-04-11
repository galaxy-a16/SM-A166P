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

    .line 2739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2709
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocUrlCase:Z

    .line 2710
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    .line 2711
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocWebCase:Z

    .line 2712
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    .line 2715
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isIP:Z

    .line 2716
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isDevDevice:Z

    .line 2717
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isTablet:Z

    const/4 v1, 0x1

    .line 2720
    iput-boolean v1, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isValidZip:Z

    .line 2722
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isCheckZipFormat:Z

    .line 2724
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isAllowSelfUpdate:Z

    .line 2725
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isBlockSelfUpdateWithPEM:Z

    .line 2726
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLimitOnlyKorMCC:Z

    .line 2727
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isTabletExcepted:Z

    .line 2729
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isHitTargetDomain:Z

    .line 2732
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isCheckRequestInstallPEM:Z

    .line 2733
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    .line 2740
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->target_model:Ljava/lang/String;

    return-void
.end method
