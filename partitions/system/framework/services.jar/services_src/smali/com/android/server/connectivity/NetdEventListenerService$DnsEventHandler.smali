.class public Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;
.super Landroid/os/Handler;
.source "NetdEventListenerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/NetdEventListenerService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetdEventListenerService;Landroid/os/Looper;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 435
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 439
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;

    .line 442
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->dnsHandleEvent(Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;)V

    :goto_0
    return-void
.end method
