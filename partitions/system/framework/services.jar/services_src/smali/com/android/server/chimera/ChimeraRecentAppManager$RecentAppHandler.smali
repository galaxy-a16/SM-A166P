.class public Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;
.super Landroid/os/Handler;
.source "ChimeraRecentAppManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/ChimeraRecentAppManager;Landroid/os/Looper;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    .line 253
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 258
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 259
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/ChimeraRecentAppManager;->checkAppUsageEnd(I)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/ChimeraRecentAppManager;->checkAppUsageStart(I)V

    :goto_0
    return-void
.end method
