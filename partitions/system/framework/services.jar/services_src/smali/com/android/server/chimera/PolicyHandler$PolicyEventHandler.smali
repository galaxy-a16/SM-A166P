.class public Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;
.super Landroid/os/Handler;
.source "PolicyHandler.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/PolicyHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/PolicyHandler;Landroid/os/Looper;)V
    .locals 0

    .line 1700
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;->this$0:Lcom/android/server/chimera/PolicyHandler;

    .line 1701
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1706
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1708
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1710
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;->this$0:Lcom/android/server/chimera/PolicyHandler;

    invoke-static {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->-$$Nest$mreclaimAppCaches(Lcom/android/server/chimera/PolicyHandler;Ljava/lang/String;)V

    .line 1712
    :cond_1
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->clearAppLaunchInfoMap()V

    :goto_0
    return-void
.end method
