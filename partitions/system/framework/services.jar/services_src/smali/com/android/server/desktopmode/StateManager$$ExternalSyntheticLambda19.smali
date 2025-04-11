.class public final synthetic Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/StateManager;

.field public final synthetic f$1:Lcom/android/server/desktopmode/State;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/desktopmode/StateManager;

    iput-object p2, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda19;->f$1:Lcom/android/server/desktopmode/State;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/desktopmode/StateManager;

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda19;->f$1:Lcom/android/server/desktopmode/State;

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/StateManager;->$r8$lambda$dSvFPc8bewH8TyC4JvLxHq503ag(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    return-void
.end method
