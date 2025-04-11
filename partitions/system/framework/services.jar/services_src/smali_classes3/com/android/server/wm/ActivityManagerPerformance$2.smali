.class public Lcom/android/server/wm/ActivityManagerPerformance$2;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerPerformance.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityManagerPerformance;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityManagerPerformance;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "ActivityManagerPerformance"

    if-eqz p2, :cond_1

    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "Screen state changed. mIsScreenOn: false"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$fputmIsScreenOn(Lcom/android/server/wm/ActivityManagerPerformance;Z)V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "Screen state changed. mIsScreenOn: true"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-static {p1, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$fputmIsScreenOn(Lcom/android/server/wm/ActivityManagerPerformance;Z)V

    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-static {p0, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$fputneedSkipResume(Lcom/android/server/wm/ActivityManagerPerformance;Z)V

    goto :goto_0

    :cond_3
    const-string p2, "com.sec.android.sdhms.action.INIT_COMPLETED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "SDHMS INIT_COMPLETED"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-static {p0, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$fputmIsSdhmsInitCompleted(Lcom/android/server/wm/ActivityManagerPerformance;Z)V

    :cond_5
    :goto_0
    return-void
.end method
