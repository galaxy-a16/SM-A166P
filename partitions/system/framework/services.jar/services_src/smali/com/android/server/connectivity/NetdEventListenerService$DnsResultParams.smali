.class public Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;
.super Ljava/lang/Object;
.source "NetdEventListenerService.java"


# instance fields
.field public final mHostname:Ljava/lang/String;

.field public final mLatencyMs:I

.field public final mNetId:I

.field public final mReturnCode:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;II)V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    .line 285
    iput p2, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mReturnCode:I

    .line 286
    iput-object p3, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mHostname:Ljava/lang/String;

    .line 287
    iput p4, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mUid:I

    .line 288
    iput p5, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mLatencyMs:I

    return-void
.end method
