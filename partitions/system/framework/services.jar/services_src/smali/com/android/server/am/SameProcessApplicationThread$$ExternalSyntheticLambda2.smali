.class public final synthetic Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/SameProcessApplicationThread;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/SameProcessApplicationThread;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/SameProcessApplicationThread;

    iput-object p2, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/SameProcessApplicationThread;

    iget-object p0, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/server/am/SameProcessApplicationThread;->$r8$lambda$kjEGcLc7ZbkescnOjmZNX3gKyTY(Lcom/android/server/am/SameProcessApplicationThread;Ljava/util/List;)V

    return-void
.end method
