.class public Lcom/android/server/desktopmode/UiManager$6;
.super Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;
.source "UiManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/UiManager;

.field public final synthetic val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$6;->this$0:Lcom/android/server/desktopmode/UiManager;

    iput-object p2, p0, Lcom/android/server/desktopmode/UiManager$6;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationComplete()V
    .locals 0

    .line 0
    return-void
.end method

.method public onClickButtonNegative()V
    .locals 0

    .line 596
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$6;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    if-eqz p0, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;->onClickButtonNegative()V

    :cond_0
    return-void
.end method

.method public onClickButtonPositive()V
    .locals 0

    .line 589
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$6;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    if-eqz p0, :cond_0

    .line 590
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;->onClickButtonPositive()V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .line 610
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$6;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    if-eqz p0, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    .line 603
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$6;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    if-eqz p0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;->onShow()V

    :cond_0
    return-void
.end method
