.class public Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;
.super Ljava/lang/Object;
.source "UiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mNotFastChargerDialogCommand:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 773
    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mNotFastChargerDialogCommand:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mNotFastChargerDialogCommand:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 784
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    .line 786
    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mNotFastChargerDialogCommand:Ljava/lang/Runnable;

    return-void
.end method

.method public setCommand(ILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 777
    iput-object p2, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mNotFastChargerDialogCommand:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
