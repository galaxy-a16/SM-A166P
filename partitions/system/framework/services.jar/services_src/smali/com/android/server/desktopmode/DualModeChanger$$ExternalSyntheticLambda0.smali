.class public final synthetic Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/DualModeChanger;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/DualModeChanger;

    iput p2, p0, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget v1, p0, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/desktopmode/DualModeChanger;->$r8$lambda$RIDRyndi0jIjZ_ZgMNpZGRvGkmM(Lcom/android/server/desktopmode/DualModeChanger;ILjava/lang/String;)V

    return-void
.end method
