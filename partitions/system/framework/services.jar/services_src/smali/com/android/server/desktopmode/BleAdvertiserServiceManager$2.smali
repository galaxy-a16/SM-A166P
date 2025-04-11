.class public Lcom/android/server/desktopmode/BleAdvertiserServiceManager$2;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "BleAdvertiserServiceManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$2;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserChanged(Lcom/android/server/desktopmode/State;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$2;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->setCurrentUserId(I)V

    return-void
.end method
