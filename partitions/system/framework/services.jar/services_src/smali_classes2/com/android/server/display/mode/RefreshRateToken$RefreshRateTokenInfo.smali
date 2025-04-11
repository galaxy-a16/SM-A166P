.class public Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;
.super Ljava/lang/Object;
.source "RefreshRateToken.java"


# instance fields
.field public mAcquireTime:J

.field public mRefreshRate:I

.field public mTag:Ljava/lang/String;

.field public mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iget-object v0, p1, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;->mToken:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mToken:Landroid/os/IBinder;

    .line 92
    iget-object v0, p1, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;->mTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mTag:Ljava/lang/String;

    .line 93
    iget-wide v0, p1, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;->mAcquireTime:J

    iput-wide v0, p0, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mAcquireTime:J

    .line 94
    iget p1, p1, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;->mRefreshRate:I

    iput p1, p0, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mRefreshRate:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;-><init>(Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;)V

    return-void
.end method
