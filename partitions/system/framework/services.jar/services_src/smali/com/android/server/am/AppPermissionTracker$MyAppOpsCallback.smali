.class public Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AppPermissionTracker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppPermissionTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppPermissionTracker;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;->this$0:Lcom/android/server/am/AppPermissionTracker;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/AppPermissionTracker;Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;-><init>(Lcom/android/server/am/AppPermissionTracker;)V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .locals 1

    .line 396
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;->this$0:Lcom/android/server/am/AppPermissionTracker;

    invoke-static {p0}, Lcom/android/server/am/AppPermissionTracker;->-$$Nest$fgetmHandler(Lcom/android/server/am/AppPermissionTracker;)Lcom/android/server/am/AppPermissionTracker$MyHandler;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 397
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
