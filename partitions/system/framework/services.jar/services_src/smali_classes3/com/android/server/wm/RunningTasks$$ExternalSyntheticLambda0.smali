.class public final synthetic Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RunningTasks;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RunningTasks;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RunningTasks;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RunningTasks;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-static {p0, p1}, Lcom/android/server/wm/RunningTasks;->$r8$lambda$6331bFE-7bSQf9mJTIrPmEPzrpc(Lcom/android/server/wm/RunningTasks;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
