.class public final synthetic Lcom/android/server/desktopmode/UiManager$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/UiManager$1;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager$1;Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/desktopmode/UiManager$1;

    iput-object p2, p0, Lcom/android/server/desktopmode/UiManager$1$$ExternalSyntheticLambda2;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/desktopmode/UiManager$1;

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$1$$ExternalSyntheticLambda2;->f$1:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/UiManager$1;->$r8$lambda$M94TpujJVGAcUNj6kGdNIAeHEow(Lcom/android/server/desktopmode/UiManager$1;Landroid/content/ComponentName;)V

    return-void
.end method
