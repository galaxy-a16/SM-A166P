.class public Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;
.super Ljava/lang/Object;
.source "SemExclusiveTaskManagerService.java"


# instance fields
.field public mExclusiveTaskMap:Ljava/util/HashMap;

.field public mIgnoreSettingsList:Ljava/util/HashSet;

.field public mIsA11yReset:Z

.field public mPreA11yServiceValue:Ljava/lang/String;

.field public mPreReduceAnimationValue:I

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    iput-boolean v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIsA11yReset:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIgnoreSettingsList:Ljava/util/HashSet;

    return-void
.end method
