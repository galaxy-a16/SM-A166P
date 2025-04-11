.class public Lcom/android/server/desktopmode/UiManager$4;
.super Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;
.source "UiManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/UiManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/UiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$4;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationComplete()V
    .locals 0

    return-void
.end method

.method public onClickButtonNegative()V
    .locals 0

    return-void
.end method

.method public onClickButtonPositive()V
    .locals 0

    return-void
.end method

.method public onDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$4;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/UiManager;->-$$Nest$mpostUnbindServiceRunnable(Lcom/android/server/desktopmode/UiManager;)V

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
