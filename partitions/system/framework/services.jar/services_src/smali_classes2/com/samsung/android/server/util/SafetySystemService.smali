.class public abstract Lcom/samsung/android/server/util/SafetySystemService;
.super Ljava/lang/Object;
.source "SafetySystemService.java"


# direct methods
.method public static getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 86
    sget-object v0, Lcom/samsung/android/server/util/SafetySystemService$LazyHolder;->sSingleton:Lcom/samsung/android/server/util/SafetySystemService$Manager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/util/SafetySystemService$Manager;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static onSystemReady(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;)V
    .locals 1

    .line 67
    sget-object v0, Lcom/samsung/android/server/util/SafetySystemService$LazyHolder;->sSingleton:Lcom/samsung/android/server/util/SafetySystemService$Manager;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/util/SafetySystemService$Manager;->onSystemReady(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;)V

    return-void
.end method

.method public static registerForSystemReady(Lcom/samsung/android/server/util/SafetySystemService$Callback;)V
    .locals 1

    .line 72
    sget-object v0, Lcom/samsung/android/server/util/SafetySystemService$LazyHolder;->sSingleton:Lcom/samsung/android/server/util/SafetySystemService$Manager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/util/SafetySystemService$Manager;->registerCallback(Lcom/samsung/android/server/util/SafetySystemService$Callback;)V

    return-void
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "Should be called after system ready."

    .line 95
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " should be called after system ready."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
