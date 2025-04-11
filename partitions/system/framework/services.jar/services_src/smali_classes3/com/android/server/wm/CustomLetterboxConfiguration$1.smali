.class public Lcom/android/server/wm/CustomLetterboxConfiguration$1;
.super Landroid/content/BroadcastReceiver;
.source "CustomLetterboxConfiguration.java"


# instance fields
.field public final synthetic val$instance:Lcom/android/server/wm/CustomLetterboxConfiguration;


# direct methods
.method public static synthetic $r8$lambda$bEmsU_kKdJrNds9JIAub1UX4Yes(Lcom/android/server/wm/CustomLetterboxConfiguration;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration$1;->lambda$onReceive$0(Lcom/android/server/wm/CustomLetterboxConfiguration;)V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/android/server/wm/CustomLetterboxConfiguration;)V
    .locals 0

    .line 286
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->-$$Nest$mupdateWallpaperType(Lcom/android/server/wm/CustomLetterboxConfiguration;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 282
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p1, :cond_1

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onReceive: action="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 284
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "null"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CustomLetterbox"

    .line 283
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/CustomLetterboxConfiguration$1;->val$instance:Lcom/android/server/wm/CustomLetterboxConfiguration;

    invoke-static {p1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->-$$Nest$fgetmWmService(Lcom/android/server/wm/CustomLetterboxConfiguration;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration$1;->val$instance:Lcom/android/server/wm/CustomLetterboxConfiguration;

    new-instance p2, Lcom/android/server/wm/CustomLetterboxConfiguration$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/wm/CustomLetterboxConfiguration$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CustomLetterboxConfiguration;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
