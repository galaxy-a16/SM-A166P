.class public Lcom/android/server/sepunion/VDCObserverService$4;
.super Landroid/database/ContentObserver;
.source "VDCObserverService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/VDCObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Handler;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$4;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$4;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-static {p1}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/VDCObserverService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$4;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-static {p0}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/VDCObserverService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
