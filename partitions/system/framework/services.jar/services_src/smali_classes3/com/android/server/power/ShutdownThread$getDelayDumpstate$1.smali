.class public Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetBIN_TYPE_PRODUCTSHIP()Z

    move-result p0

    const-string v0, "ShutdownDelay"

    if-nez p0, :cond_1

    const-string/jumbo p0, "recovery"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetmReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "recovery-update"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetmReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "!@ShutdownThread.run() : checking timeout, done."

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "!@ShutdownThread.run() : Checking timeout, done. Try force shutdown again."

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetsInstance()Lcom/android/server/power/ShutdownThread;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->-$$Nest$fgetmContext(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetmReboot()Z

    move-result v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetmReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    :goto_1
    return-void
.end method
