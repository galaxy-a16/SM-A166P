.class public Lcom/android/server/desktopmode/ToastManager$1;
.super Landroid/widget/Toast$Callback;
.source "ToastManager.java"


# instance fields
.field public final synthetic val$msg:Ljava/lang/String;

.field public final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/widget/Toast;Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/server/desktopmode/ToastManager$1;->val$toast:Landroid/widget/Toast;

    iput-object p2, p0, Lcom/android/server/desktopmode/ToastManager$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Landroid/widget/Toast$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onToastHidden()V
    .locals 4

    .line 47
    invoke-static {}, Lcom/android/server/desktopmode/ToastManager;->-$$Nest$sfgetsToasts()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 48
    :try_start_0
    invoke-static {}, Lcom/android/server/desktopmode/ToastManager;->-$$Nest$sfgetsToasts()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/ToastManager$1;->val$toast:Landroid/widget/Toast;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 49
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/ToastManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Toast.onToastHidden(), msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/ToastManager$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", sToasts="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/desktopmode/ToastManager;->-$$Nest$sfgetsToasts()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
