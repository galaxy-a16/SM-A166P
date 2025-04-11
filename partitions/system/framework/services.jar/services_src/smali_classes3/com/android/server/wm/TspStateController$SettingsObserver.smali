.class public Lcom/android/server/wm/TspStateController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "TspStateController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TspStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TspStateController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public observe()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    invoke-static {v0}, Lcom/android/server/wm/TspStateController;->-$$Nest$fgetmContext(Lcom/android/server/wm/TspStateController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/wm/TspStateController;->-$$Nest$sfgetURI_SETTING_TSP_THRESHOLD()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {}, Lcom/android/server/wm/TspStateController;->-$$Nest$sfgetURI_SETTING_TSP_DEBUG()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    invoke-static {v0}, Lcom/android/server/wm/TspStateController;->-$$Nest$fgetmContext(Lcom/android/server/wm/TspStateController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "setting_tsp_threshold"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/TspStateController;->-$$Nest$fputmTspThresholdSetting(Lcom/android/server/wm/TspStateController;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    invoke-static {p0}, Lcom/android/server/wm/TspStateController;->-$$Nest$fgetmContext(Lcom/android/server/wm/TspStateController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "setting_tsp_debug"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/wm/TspStateController;->-$$Nest$fputmTspDebugSetting(Lcom/android/server/wm/TspStateController;I)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/wm/TspStateController;->-$$Nest$sfgetURI_SETTING_TSP_THRESHOLD()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    invoke-static {p1}, Lcom/android/server/wm/TspStateController;->-$$Nest$fgetmContext(Lcom/android/server/wm/TspStateController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "setting_tsp_threshold"

    invoke-static {p2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/wm/TspStateController;->-$$Nest$fputmTspThresholdSetting(Lcom/android/server/wm/TspStateController;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->updateTspCustomCommand()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/wm/TspStateController;->-$$Nest$sfgetURI_SETTING_TSP_DEBUG()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    invoke-static {p1}, Lcom/android/server/wm/TspStateController;->-$$Nest$fgetmContext(Lcom/android/server/wm/TspStateController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "setting_tsp_debug"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/wm/TspStateController;->-$$Nest$fputmTspDebugSetting(Lcom/android/server/wm/TspStateController;I)V

    iget-object p0, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->toggleTspDebug()V

    :cond_2
    :goto_0
    return-void
.end method
