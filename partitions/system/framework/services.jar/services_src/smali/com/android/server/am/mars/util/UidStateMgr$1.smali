.class public Lcom/android/server/am/mars/util/UidStateMgr$1;
.super Landroid/app/IUidObserver$Stub;
.source "UidStateMgr.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/util/UidStateMgr;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/util/UidStateMgr;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {v0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->-$$Nest$mremoveFromUidIdleList(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    .line 204
    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {v0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->-$$Nest$maddToRunningList(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    .line 205
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->-$$Nest$mremoveFromUidGone(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 0

    .line 196
    iget-object p2, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p2, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->-$$Nest$mremoveFromUidIdleList(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    .line 197
    iget-object p2, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p2, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->-$$Nest$mremoveFromRunningList(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    .line 198
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->-$$Nest$maddToUidGone(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0

    .line 189
    iget-object p2, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p2, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->-$$Nest$maddToUidIdleList(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    .line 190
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->-$$Nest$maddToRunningList(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    return-void
.end method

.method public onUidProcAdjChanged(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 0

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    .line 211
    iget-object p3, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p3, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->-$$Nest$maddToUidTopList(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object p3, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p3, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->-$$Nest$mremoveFromUidTopList(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    :goto_0
    const/4 p3, 0x4

    if-eq p2, p3, :cond_2

    const/4 p3, 0x5

    if-ne p2, p3, :cond_1

    goto :goto_1

    .line 220
    :cond_1
    iget-object p3, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p3, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->-$$Nest$mremoveFromUidForegroundService(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    goto :goto_2

    .line 218
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p3, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->-$$Nest$maddToUidForegroundService(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    :goto_2
    const/16 p3, 0x10

    if-lt p2, p3, :cond_3

    const/16 p3, 0x12

    if-gt p2, p3, :cond_3

    .line 225
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->-$$Nest$maddToUidCached(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    goto :goto_3

    .line 227
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->-$$Nest$mremoveFromUidCached(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    :goto_3
    return-void
.end method
