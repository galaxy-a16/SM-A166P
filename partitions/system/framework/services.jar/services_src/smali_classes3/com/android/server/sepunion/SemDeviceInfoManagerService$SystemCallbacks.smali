.class public Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;
.super Ljava/lang/Object;
.source "SemDeviceInfoManagerService.java"


# instance fields
.field public final mBroadcastReceivers:Ljava/util/HashMap;

.field public final mContentObservers:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1089
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;->mContentObservers:Ljava/util/HashMap;

    .line 1090
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;->mBroadcastReceivers:Ljava/util/HashMap;

    return-void
.end method
