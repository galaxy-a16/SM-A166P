.class public final synthetic Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/DualModeChanger;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/DualModeChanger;

    iput-boolean p2, p0, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-boolean p0, p0, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/DualModeChanger;->$r8$lambda$GUlM8ztKL0Jb98PrRFlmUFJ0kT8(Lcom/android/server/desktopmode/DualModeChanger;Z)V

    return-void
.end method
