.class public Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"


# instance fields
.field public mRequestId:I

.field public mResponseArrived:Z

.field public mResultData:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

.field public mWaitObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResponseArrived:Z

    return-void
.end method
