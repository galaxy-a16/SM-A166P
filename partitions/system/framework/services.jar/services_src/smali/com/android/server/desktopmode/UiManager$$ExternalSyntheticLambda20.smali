.class public final synthetic Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/UiManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/desktopmode/UiManager;

    iput p2, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda20;->f$1:I

    iput p3, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda20;->f$2:I

    iput-object p4, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda20;->f$3:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/desktopmode/UiManager;

    iget v1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda20;->f$1:I

    iget v2, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda20;->f$2:I

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda20;->f$3:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/desktopmode/UiManager;->$r8$lambda$3YfRF9XQqVLgUfXIH5nDiANDuAA(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method
