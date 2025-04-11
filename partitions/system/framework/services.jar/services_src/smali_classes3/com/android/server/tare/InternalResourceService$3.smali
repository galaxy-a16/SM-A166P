.class public Lcom/android/server/tare/InternalResourceService$3;
.super Ljava/lang/Object;
.source "InternalResourceService.java"

# interfaces
.implements Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$3;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsageEvent(ILandroid/app/usage/UsageEvents$Event;)V
    .locals 2

    .line 318
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$3;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmHandler(Lcom/android/server/tare/InternalResourceService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 319
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
