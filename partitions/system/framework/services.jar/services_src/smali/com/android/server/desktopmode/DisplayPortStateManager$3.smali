.class public Lcom/android/server/desktopmode/DisplayPortStateManager$3;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "DisplayPortStateManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DisplayPortStateManager;Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$3;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;I)V
    .locals 1

    .line 104
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 105
    iget-object p2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$3;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/DisplayPortStateManager;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$3;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fgetmHighResolutionsForExternalEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$3;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fputmHighResolutionsForExternalEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    .line 108
    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$3;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$msetHighResolutionsForExternalEnabledLocked(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    .line 110
    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
