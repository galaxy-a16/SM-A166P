.class public Lcom/android/server/desktopmode/UiManager$2;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "UiManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/UiManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/UiManager;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$2;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserChanged(Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$2;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->setCurrentUserId(I)V

    return-void
.end method
